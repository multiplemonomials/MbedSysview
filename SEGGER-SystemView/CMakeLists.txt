set(SYSVIEW_PUBLIC_HEADERS
	inc/SEGGER_RTT.h
	inc/SEGGER_SYSVIEW.h)

set(SYSVIEW_PRIVATE_HEADERS
	private-inc/Global.h
	private-inc/SEGGER.h
	private-inc/SEGGER_RTT_Conf.h
	private-inc/SEGGER_SYSVIEW_Conf.h
	private-inc/SEGGER_SYSVIEW_ConfDefaults.h
	private-inc/SEGGER_SYSVIEW_Int.h)

set(SYSVIEW_SOURCES
	src/SEGGER_RTT.c
	src/SEGGER_RTT_ASM_ARMv7M.S
	src/SEGGER_SYSVIEW.c)

option(SYSVIEW_USE_MBED_US_TICKER "If enabled, SystemView will be configured to use the Mbed OS us ticker for timestamps.
  This can be slower as it means a call to us_ticker_read() each time an event is recorded.  However, it works on all
  devices supported by Mbed.  If the option is disabled, the CPU cycle counter will be used.  This is super fast but
  only supports Cortex M3, M4, and M7." TRUE)

add_library(SystemView STATIC ${SYSVIEW_PUBLIC_HEADERS} ${SYSVIEW_PRIVATE_HEADERS} ${SYSVIEW_SOURCES})
target_include_directories(SystemView PUBLIC inc PRIVATE private-inc)
target_link_libraries(SystemView mbed-os)

if(SYSVIEW_USE_MBED_US_TICKER)
	target_compile_definitions(SystemView PUBLIC -DSYSVIEW_USE_MBED_US_TICKER=1)
else()
	target_compile_definitions(SystemView PUBLIC -DSYSVIEW_USE_MBED_US_TICKER=0)
endif()