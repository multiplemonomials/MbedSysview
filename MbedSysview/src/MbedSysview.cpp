#include "MbedSysview.h"
#include "SysviewMarkers.h"

#include "SEGGER_SYSVIEW.h"
#include "SEGGER_RTT.h"

#include <cmsis.h>
#include <rtx_os.h>

// ------------------------------------------------------------------------
// Callbacks from SysView
// ------------------------------------------------------------------------

#ifndef SYSVIEW_USE_MBED_US_TICKER
#warning Please define SYSVIEW_USE_MBED_US_TICKER to 1 or 0 to select what timing method you want to use. Defaulting to 1 for now.
#define SYSVIEW_USE_MBED_US_TICKER 1
#endif

#ifndef MBED_SYSVIEW_APP_NAME
#warning Please define MBED_SYSVIEW_APP_NAME to set the name of your application in the SystemView trace.
#define MBED_SYSVIEW_APP_NAME "Mbed App"
#endif

#if SYSVIEW_USE_MBED_US_TICKER==1
/**
 * @brief Callback for SysView to get the current timestamp.  Called for each packet.
 */
U32 SEGGER_SYSVIEW_X_GetTimestamp()
{
	return us_ticker_read();
}
#endif

void MbedSysview::sendSysDescCallback()
{
	SEGGER_SYSVIEW_SendSysDesc("N=" MBED_SYSVIEW_APP_NAME ",O=Mbed OS");

	// Register all markers
	SysviewMarker::registerMarkers();
}

// Change to 1 to print details about the contents of each task list.
#define DEBUG_TASK_LISTING 1

void MbedSysview::sendTaskListCallback()
{
	// Make sure that we don't get interrupted while the scheduler internal thread
	// list iteration is running, as the thread lists could change.
	core_util_critical_section_enter();

	// There are several places in the scheduler that threads are stored.  These pointers taken from
	// svcRtxThreadEnumerate().

	// Send currently running thread
	sendThreadInfo(osRtxInfo.thread.run.curr);

	// Send ready list (uses ->thread_next)
	for(osRtxThread_t * thread = osRtxInfo.thread.ready.thread_list; thread != nullptr; thread = thread->thread_next)
	{
		sendThreadInfo(thread);
	}

	// Send delay list (uses ->delay_next)
	for(osRtxThread_t * thread = osRtxInfo.thread.delay_list; thread != nullptr; thread = thread->delay_next)
	{
		sendThreadInfo(thread);
	}

	// Send wait list (uses ->delay_next)
	for(osRtxThread_t * thread = osRtxInfo.thread.wait_list; thread != nullptr; thread = thread->delay_next)
	{
		sendThreadInfo(thread);
	}

	core_util_critical_section_exit();
}

// ------------------------------------------------------------------------
// Callbacks from RTX Event Recorder (EVR)
// ------------------------------------------------------------------------

extern "C" void EvrRtxThreadCreated (osThreadId_t thread_id, uint32_t thread_addr, const char *name)
{
	MbedSysview::sendThreadInfo(reinterpret_cast<osRtxThread_t *>(thread_id));
	SEGGER_SYSVIEW_OnTaskCreate(reinterpret_cast<uint32_t>(thread_id));
}

extern "C" void EvrRtxThreadUnblocked (osThreadId_t thread_id, uint32_t ret_val)
{
	SEGGER_SYSVIEW_OnTaskStartReady(reinterpret_cast<uint32_t>(thread_id));
}

// This is called when a thread starts waiting on something, like a timeout or a semaphore
extern "C" void EvrRtxThreadBlocked (osThreadId_t thread_id, uint32_t timeout)
{
	SEGGER_SYSVIEW_OnTaskStopReady(reinterpret_cast<uint32_t>(thread_id), 0); // currently we don't have cause information
}

// This is called when a thread is preempted by another thread, but is still able to be run.
extern "C" void EvrRtxThreadPreempted (osThreadId_t thread_id)
{
	SEGGER_SYSVIEW_OnTaskStopExec();
	SEGGER_SYSVIEW_OnTaskStartReady(reinterpret_cast<uint32_t>(thread_id));
}

extern "C" void EvrRtxThreadSwitched(osThreadId_t thread_id)
{
	SEGGER_SYSVIEW_OnTaskStartExec(reinterpret_cast<uint32_t>(thread_id));
}

// ------------------------------------------------------------------------
// Class member functions
// ------------------------------------------------------------------------

MbedSysview * MbedSysview::instance = nullptr;

// Calculate RAMBase from the Mbed compiler defines.
// Per mbed_stats.c, there could be up to 4 RAM banks.
#if defined(MBED_RAM3_START)
const void * MbedSysview::RAMBase = reinterpret_cast<void *>(std::min(std::min(MBED_RAM3_START, MBED_RAM2_START), std::min(MBED_RAM1_START, MBED_RAM_START)));
#elif defined(MBED_RAM2_START)
const void * MbedSysview::RAMBase = reinterpret_cast<void *>(std::min(MBED_RAM2_START, std::min(MBED_RAM1_START, MBED_RAM_START)));
#elif defined(MBED_RAM1_START)
const void * MbedSysview::RAMBase = reinterpret_cast<void *>(std::min(MBED_RAM1_START, MBED_RAM_START));
#else
const void * MbedSysview::RAMBase = reinterpret_cast<void *>(MBED_RAM_START);
#endif

MbedSysview::MbedSysview()
{
	// set instance pointer
	MBED_ASSERT(instance == nullptr);
	instance = this;
}

void MbedSysview::begin()
{

#if SYSVIEW_USE_MBED_US_TICKER==1
	configureForUSTicker();
#else
	configureForCycleCounter();
#endif

	// Struct pointing SysView to sendTaskListCallback()
	static SEGGER_SYSVIEW_OS_API osAPI = {
			.pfGetTime = nullptr,
			.pfSendTaskList = &MbedSysview::sendTaskListCallback
	};

	// First initialize RTT, which SysView uses
	SEGGER_RTT_Init();

	// Now initialize SysView
	SEGGER_SYSVIEW_Init(timestampFreq, SystemCoreClock, &osAPI, &sendSysDescCallback);

	// Set the RAM base, which is the number subtracted from all ID numbers
	// to make them smaller (since ID numbers are assumed to be RAM addresses).
	SEGGER_SYSVIEW_SetRAMBase(reinterpret_cast<U32>(RAMBase));

	// thread termination has to be hooked through Mbed not RTX
	Kernel::attach_thread_terminate_hook(&MbedSysview::mbedThreadTerminateHook);
}

bool MbedSysview::isViewerConnected()
{
	return SEGGER_SYSVIEW_IsStarted();
}

#if SYSVIEW_USE_MBED_US_TICKER==0
void MbedSysview::configureForCycleCounter()
{
	// Following code modified from the SEGGER example code

	//
	// If no debugger is connected, the DWT must be enabled by the application
	//
	if ((CoreDebug->DEMCR & CoreDebug_DEMCR_TRCENA_Msk) == 0) {
		CoreDebug->DEMCR |= CoreDebug_DEMCR_TRCENA_Msk;
	}
	//
	//  The cycle counter must be activated in order
	//  to use time related functions.
	//
	if ((DWT->CTRL & DWT_CTRL_NOCYCCNT_Msk) == 0) {       // Cycle counter supported?
		if ((DWT->CTRL & DWT_CTRL_CYCCNTENA_Msk) == 0) {    // Cycle counter not enabled?
			DWT->CTRL |= DWT_CTRL_CYCCNTENA_Msk;              // Enable Cycle counter
		}
	}

	// timestamps run at CPU frequency
	timestampFreq = SystemCoreClock;
}
#endif

#if SYSVIEW_USE_MBED_US_TICKER==1
void MbedSysview::configureForUSTicker()
{
	timestampFreq = us_ticker_get_info()->frequency;
}
#endif

void MbedSysview::sendThreadInfo(osRtxThread_t * thread)
{
	SEGGER_SYSVIEW_TASKINFO info;

	memset(&info, 0, sizeof(info));
	info.TaskID    = reinterpret_cast<uint32_t>(thread); // in RTX, thread IDs are pointers to the osRtxThread_t struct.
	info.sName     = thread->name;
	info.Prio      = static_cast<uint32_t>(thread->priority);
	info.StackBase = reinterpret_cast<uint32_t>(thread->stack_mem);
	info.StackSize = thread->stack_size;

	SEGGER_SYSVIEW_SendTaskInfo(&info);
}

void MbedSysview::mbedThreadTerminateHook(osThreadId_t threadID)
{
	SEGGER_SYSVIEW_OnTaskTerminate(reinterpret_cast<uint32_t>(threadID));
}
