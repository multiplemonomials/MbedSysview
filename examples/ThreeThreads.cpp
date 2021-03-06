/**
 * @file MbedSysview three threads example.
 * This program creates three threads that run at different intervals, which should be visible on SysView.
 */

#include <mbed.h>

#include "MbedSysview.h"
#include "SysviewMarkers.h"

SysviewMarker thread1Marker("Thread1 Marker");

SysviewMarker thread3Marker("Thread3 Marker");


[[noreturn]] void thread1Func()
{
	while(true)
	{
		//printf("Thread 1 exec!\n");

		// Simulate doing actual work (busy wait) with a marker mark in the middle
		wait_us(250);
		thread1Marker.markStart();
		wait_us(250);

		ThisThread::sleep_for(2ms);
	}
}

[[noreturn]] void thread2Func()
{
	while(true)
	{
		//printf("Thread 2 exec!\n");

		// Simulate doing actual work (busy wait)
		wait_us(2000);

		ThisThread::sleep_for(5ms);
	}
}

[[noreturn]] void thread3Func()
{
	while(true)
	{
		//printf("Thread 3 exec!\n");

		// Simulate doing actual work (busy wait) with a marker marking the third fourth of the period
		wait_us(1000);
		thread3Marker.markStart();
		wait_us(500);
		thread3Marker.markEnd();
		wait_us(500);

		ThisThread::sleep_for(10ms);
	}
}

// IMPORTANT: Give your threads names!
Thread thread1(osPriorityNormal, OS_STACK_SIZE, nullptr, "Thread1");
Thread thread2(osPriorityNormal, OS_STACK_SIZE, nullptr, "Thread2");
Thread thread3(osPriorityNormal, OS_STACK_SIZE, nullptr, "Thread3");

#ifdef TARGET_STM32F4
// Workaround for bug with RTT on STM32F4 devices.  Prevents processor from
// running the idle thread and going to sleep.  See README for details.
[[noreturn]] void sleeplessIdleFunc()
{
	while(true) {}
}
Thread sleeplessIdleThread(osPriorityLow, OS_STACK_SIZE, nullptr, "Idle Thread");
#endif

MbedSysview sysview;

int main()
{
	// Can declare markers locally but must construct them before calling sysview.begin().
	SysviewMarker initMarker("Init Done");

	sysview.begin();

	printf("Initialized.\n");

	// optional: wait for viewer to connect if you want to capture the start events
	// sysview.waitForViewer();

#ifdef TARGET_STM32F4
	sleeplessIdleThread.start(&sleeplessIdleFunc);
#endif

	thread1.start(&thread1Func);
	thread2.start(&thread2Func);
	thread3.start(&thread3Func);

	initMarker.markStart();

	while(true)
	{
		printf("Running...\n");

		// Simulate doing actual work (busy wait)
		wait_us(2000);

		ThisThread::sleep_for(100ms);
	}
}