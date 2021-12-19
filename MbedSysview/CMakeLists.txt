set(MBED_SYSVIEW_INCLUDES
	inc/MbedSysview.h
	inc/SysviewMarkers.h)

set(MBED_SYSVIEW_SOURCES
	src/MbedSysview.cpp
	src/SysviewMarkers.cpp)

if(NOT DEFINED MBED_SYSVIEW_APP_NAME)
	# Default SysView application name to be the CMake project name.
	# This controls the application name shown in the viewer.
	set(MBED_SYSVIEW_APP_NAME ${PROJECT_NAME})
endif()

add_library(MbedSysview ${MBED_SYSVIEW_INCLUDES} ${MBED_SYSVIEW_SOURCES})
target_link_libraries(MbedSysview SystemView mbed-os)
target_include_directories(MbedSysview PUBLIC inc)
target_compile_definitions(MbedSysview PRIVATE MBED_SYSVIEW_APP_NAME="${MBED_SYSVIEW_APP_NAME}")