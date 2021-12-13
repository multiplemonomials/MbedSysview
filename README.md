# MbedSysview Library
#### A way to visualize your multithreaded application like never before!
![Task Picture](https://app.box.com/shared/static/1a2hbqf2qcwzbaudxe43cg1l8one04bz.png)

MbedSysview is a library that connects the Mbed OS task scheduler to the SEGGER SystemView profiling & analysis software.  SystemView is an amazingly useful tool  which shows a complete picture of all task executions, thread switches, and other events of interest in your application.  It works by having code running on the target log messages to a low-overhead buffer when events such as task switches occur.  These events are then read out over a J-Link debugger and processed by the host application to generate a complete picture of activity on the device.  The entire system is extremely efficient and can log tens of thousands of events per second with microsecond timing accuracy.   

## What you Need to Use SystemView
- MCU that is [supported by SEGGER J-Link](https://www.segger.com/supported-devices/jlink/)
- Any standalone J-Link debug probe, or a dev board with a J-Link On-Board
  - Many Mbed boards, such as STM32 Nucleo boards, can have alternate firmware loaded that converts their debuggers into a J-Link On-Board
- License for SEGGER SystemView.  SystemView is free for educational and hobby use.  For commercial use it costs roughly $1000 per seat.

## SystemView Boot Process
This section will explain how your application starts up and connects to SystemView.

The first thing that will happen after reset is your code creating the MbedSysview instance and calling the begin() function on it.  This initializes the SEGGER RTT buffers and allows the SystemView host application to connect to the processor.

However, events will not actually be recorded yet.  For performance reasons, the SystemView library does not log any events until it detects that the SystemView application has actually connected.  So, in production, the application will never connect and there will be very little overhead from SystemView.

At some point, suppose the SystemView application connects.  From this point on, SystemView events will be generated by the scheduler instrumentation and put into the RTT buffer, where SystemView reads them and displays them live.

Note that this scheme has one problem: events occurring in your application before SystemView connects will not be recorded.  This means that you won't be able to record events that at application bootup.  To get around this, MbedSysview provides the `waitForViewer()` function.  If you add a call to this function right after calling `MbedSysview::begin()`, the Mbed application will wait forever until the SystemView application connects.  This is obviously not suitable for production, but should be very useful if you want to capture the boot process during testing.    

## Tips for Using SystemView
#### STM32F4 devices: Do not allow the idle thread to run
There is an issue where when the idle thread executes and puts the device into sleep mode, [the RTT memory can't be read properly](https://community.st.com/s/question/0D50X00009XkWE7SAN/segger-jlink-rtt-doesnt-work-with-sleep-modes), causing the SystemView output to be corrupted.  The only way to avoid this that I've found is to define a thread with an infinite loop that runs at osPriorityLow.  The OS will switch to this thread instead of the idle thread when it has no other thread to run, preventing the idle thread from running and breaking things.

#### Don't use SystemView and RTT Viewer at the same time
SystemView and the standalone SEGGER RTT Viewer program cannot be run at the same time, they will fight each other for control of the RTT stream and cause lost data.  If you need to print something out to the host during SystemView operation and you normally use RTT, your only real option is to use the `SEGGER_SystemView_PrintfHost()` function to print to the SystemView log.  However, be aware that this printf implementation has very limited features and essentially only supports integers, not floats or strings.

#### Using a debugger with SystemView
You should be able to use SEGGER's debugger (J-Link GDB Server) at the same time as SystemView. You will want to connect the debugger and run the application (and make sure it isn't sitting at a breakpoint), then press play in SystemView.  Once it connects, you should then be able to stop and debug the application and see SystemView events show up in real time.

Note that I have not tested other 3rd-party debugging tools like OpenOCD, I'm not sure if those will work with SystemView.

Note that I do not believe you can use SEGGER Ozone's debugger at the same time as SystemView, because it will try to read the RTT output and cause data to be lost.