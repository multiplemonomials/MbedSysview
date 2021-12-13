
#ifndef _MBEDSYSVIEW_H
#define _MBEDSYSVIEW_H

#include <mbed.h>

/**
 * @brief Interface between Mbed RTOS and SEGGER SystemView.  Once instantiated,
 * this class allows the SystemView application to connect to Mbed using a J-Link debug probe.
 *
 * Note: Since this class needs to interact with non-C++-aware C callbacks, only once instance
 * of it may be created.
 */
class MbedSysview
{
protected:

	/**
	 * @brief Instance pointer for callbacks to use.
	 */
	static MbedSysview * instance;

	/**
	 * @brief Frequency of event timestamps in Hz
	 */
	uint32_t timestampFreq;

	/**
	 * @brief Start address of the RAM bank with the lowest address on the target.
	 * This is used to initialize the SystemView RAM base.
	 */
	static const void * RAMBase;

public:

	/**
	 * @brief Construct an MbedSysview instance.
	 */
	MbedSysview();

	// copying and assignment not allowed
	MbedSysview(MbedSysview const & other) = delete;
	MbedSysview & operator=(MbedSysview const & other) = delete;

	/**
	 * @brief Initialize SystemView, allowing the application to be connected to.
	 */
	void begin();

	/**
	 * @brief Get whether or not the SystemView viewer application is connected.  No events will
	 * actually be recorded until it is.  This function actively reads the RTT down buffer to see
	 * if there is an enable command, so it's safe to loop on.
	 */
	bool isViewerConnected();

	/**
	 * @brief Wait forever until the SystemView viewer is connected.  Useful if you want to analyze events
	 * happening at program startup, which would otherwise be missed since they happen before
	 * the viewer connects.
	 *
	 * You would probably not want to call this in production code :)
	 */
	void waitForViewer()
	{
		while(!isViewerConnected())
		{}
	}

private:

	/**
	 * @brief Configure SystemView to use the cycle counter for its timestamps.
	 */
	void configureForCycleCounter();

	/**
	 * @brief Configure SystemView to use the microsecond ticker for its timestamps.
	 */
	void configureForUSTicker();

public:

	/**
	 * @brief Send info about the given thread to SystemView.  Called for all existing threads when
	 * SysView starts up, as well as for any new threads that are created.
	 */
	static void sendThreadInfo(osRtxThread_t * thread);

private:

	// SystemView callbacks --------------------------------------------

	/**
	 * @brief Callback from SysView on application connect. Used to send
	 * configuration strings that configure display of the trace (e.g. marker names, application name,
	 * interrupt names, etc) in the viewer.
	 */
	static void sendSysDescCallback();

	/**
	 * @brief Callback from SysView om application connect.  Tells us to send the list
	 * of currently running tasks.
	 */
	static void sendTaskListCallback();

	/**
	 * @brief Callback from Mbed when a thread terminates.  Mbed already uses this EVR callback
	 * so for this one specific thing (thread termination) we need to use Mbed instead of RTX.
	 */
	static void mbedThreadTerminateHook(osThreadId_t threadID);
};

#endif //_MBEDSYSVIEW_H
