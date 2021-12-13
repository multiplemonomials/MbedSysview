# Mbed OS CMake configuration file.
# This contains all of the information needed for CMake to compile and use Mbed OS with NUCLEO_F429ZI.
# It was extracted from the Mbed configuration files when you originally configured this project.
# AUTOGENERATED by "mbed-cmake\configure_for_target.py NUCLEO_F429ZI -a mbed_app.json -i .mbedignore".  DO NOT EDIT!

set(MBED_TOOLCHAIN_NAME
   GCC_ARM)

set(MCU_COMPILE_OPTIONS
   -Wall
   -Wextra
   -Wno-unused-parameter
   -Wno-missing-field-initializers
   -fmessage-length=0
   -fno-exceptions
   -ffunction-sections
   -fdata-sections
   -funsigned-char
   -MMD
   -fomit-frame-pointer
   -Os
   -g
   -DMBED_TRAP_ERRORS_ENABLED=1
   -mcpu=cortex-m4
   -mthumb
   -mfpu=fpv4-sp-d16
   -mfloat-abi=softfp
   -DMBED_ROM_START=0x8000000
   -DMBED_ROM_SIZE=0x200000
   -DMBED_RAM1_START=0x10000000
   -DMBED_RAM1_SIZE=0x10000
   -DMBED_RAM_START=0x20000000
   -DMBED_RAM_SIZE=0x30000)

set(MCU_LINK_OPTIONS
   -Wl,--gc-sections
   -Wl,--wrap,main
   -Wl,--wrap,_malloc_r
   -Wl,--wrap,_free_r
   -Wl,--wrap,_realloc_r
   -Wl,--wrap,_memalign_r
   -Wl,--wrap,_calloc_r
   -Wl,--wrap,exit
   -Wl,--wrap,atexit
   -Wl,-n
   -mcpu=cortex-m4
   -mthumb
   -mfpu=fpv4-sp-d16
   -mfloat-abi=softfp
   -DMBED_ROM_START=0x8000000
   -DMBED_ROM_SIZE=0x200000
   -DMBED_RAM1_START=0x10000000
   -DMBED_RAM1_SIZE=0x10000
   -DMBED_RAM_START=0x20000000
   -DMBED_RAM_SIZE=0x30000
   -DMBED_BOOT_STACK_SIZE=1024
   -DXIP_ENABLE=0)

set(MBED_LINKER_SCRIPT
   targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/TOOLCHAIN_GCC_ARM/STM32F429xI.ld)

set(MBED_INCLUDE_DIRS
   .
   .
   cmsis
   cmsis/CMSIS_5
   cmsis/CMSIS_5/CMSIS
   cmsis/CMSIS_5/CMSIS/RTOS2
   cmsis/CMSIS_5/CMSIS/RTOS2/Include
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Config
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Include
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Include1
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source
   cmsis/CMSIS_5/CMSIS/TARGET_CORTEX_M
   cmsis/CMSIS_5/CMSIS/TARGET_CORTEX_M/Include
   cmsis/device
   cmsis/device/RTE
   cmsis/device/RTE/include
   cmsis/device/rtos
   cmsis/device/rtos/include
   connectivity
   connectivity/drivers/emac/TARGET_STM
   connectivity/drivers/emac/TARGET_STM/TARGET_STM32F4
   connectivity/drivers/mbedtls/TARGET_STM
   connectivity/libraries
   connectivity/libraries/nanostack-libservice
   connectivity/libraries/nanostack-libservice/mbed-client-libservice
   connectivity/libraries/nanostack-libservice/mbed-client-libservice/platform
   connectivity/libraries/ppp
   connectivity/libraries/ppp/include
   connectivity/libraries/ppp/include/polarssl
   connectivity/libraries/ppp/include/ppp
   connectivity/lwipstack
   connectivity/lwipstack/include
   connectivity/lwipstack/include/lwipstack
   connectivity/lwipstack/lwip
   connectivity/lwipstack/lwip-sys
   connectivity/lwipstack/lwip-sys/arch
   connectivity/lwipstack/lwip/src
   connectivity/lwipstack/lwip/src/include
   connectivity/lwipstack/lwip/src/include/compat
   connectivity/lwipstack/lwip/src/include/compat/posix
   connectivity/lwipstack/lwip/src/include/compat/posix/arpa
   connectivity/lwipstack/lwip/src/include/compat/posix/net
   connectivity/lwipstack/lwip/src/include/compat/posix/sys
   connectivity/lwipstack/lwip/src/include/lwip
   connectivity/lwipstack/lwip/src/include/lwip/priv
   connectivity/lwipstack/lwip/src/include/lwip/prot
   connectivity/lwipstack/lwip/src/include/netif
   connectivity/mbedtls
   connectivity/mbedtls/include
   connectivity/mbedtls/include/mbedtls
   connectivity/mbedtls/platform
   connectivity/mbedtls/platform/inc
   connectivity/mbedtls/source
   connectivity/nanostack
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos
   connectivity/nanostack/sal-stack-nanostack-eventloop
   connectivity/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop
   connectivity/nanostack/sal-stack-nanostack-eventloop/nanostack-event-loop/platform
   connectivity/nanostack/sal-stack-nanostack-eventloop/source
   connectivity/netsocket
   connectivity/netsocket/include
   connectivity/netsocket/include/netsocket
   drivers
   drivers/include
   drivers/include/drivers
   drivers/include/drivers/interfaces
   events
   events/include
   events/include/events
   events/include/events/internal
   hal
   hal/include
   hal/include/hal
   hal/usb
   hal/usb/include
   hal/usb/include/usb
   platform
   platform/cxxsupport
   platform/include
   platform/include/platform
   platform/include/platform/internal
   platform/mbed-trace
   platform/mbed-trace/include
   platform/mbed-trace/include/mbed-trace
   platform/randlib
   platform/randlib/include
   platform/randlib/include/mbed-client-randlib
   platform/randlib/include/mbed-client-randlib/platform
   platform/source
   platform/source/minimal-printf
   rtos
   rtos/include
   rtos/include/rtos
   rtos/include/rtos/internal
   rtos/source
   storage
   storage/blockdevice
   storage/blockdevice/COMPONENT_FLASHIAP
   storage/blockdevice/COMPONENT_FLASHIAP/include
   storage/blockdevice/COMPONENT_FLASHIAP/include/FlashIAP
   storage/blockdevice/include
   storage/blockdevice/include/blockdevice
   storage/blockdevice/include/blockdevice/internal
   targets/TARGET_STM
   targets/TARGET_STM/TARGET_STM32F4
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/CMSIS
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/Legacy
   targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI
   targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/TARGET_NUCLEO_F429ZI)

set(MBED_SOURCE_FILES
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/TOOLCHAIN_GCC/TARGET_RTOS_M4_M7/irq_cm4f.S
   platform/source/TARGET_CORTEX_M/TOOLCHAIN_GCC/except.S
   targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/TOOLCHAIN_GCC_ARM/startup_stm32f429xx.S
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Config/RTX_Config.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Library/cmsis_os1.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_delay.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_evflags.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_evr.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_kernel.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_lib.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_memory.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_mempool.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_msgqueue.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_mutex.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_semaphore.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_system.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_thread.c
   cmsis/CMSIS_5/CMSIS/RTOS2/RTX/Source/rtx_timer.c
   cmsis/CMSIS_5/CMSIS/RTOS2/Source/os_systick.c
   cmsis/CMSIS_5/CMSIS/RTOS2/Source/os_tick_ptim.c
   cmsis/CMSIS_5/CMSIS/TARGET_CORTEX_M/Source/mbed_tz_context.c
   cmsis/device/rtos/TOOLCHAIN_GCC_ARM/mbed_boot_gcc_arm.c
   cmsis/device/rtos/source/mbed_boot.c
   cmsis/device/rtos/source/mbed_rtos_rtx.c
   cmsis/device/rtos/source/mbed_rtx_handlers.c
   connectivity/drivers/emac/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F429ZI/stm32f4_eth_conf.c
   connectivity/drivers/emac/TARGET_STM/TARGET_STM32F4/TARGET_NUCLEO_F429ZI/stm32f4_eth_init.c
   connectivity/drivers/mbedtls/TARGET_STM/aes_alt_stm32l4.c
   connectivity/drivers/mbedtls/TARGET_STM/cryp_stm32.c
   connectivity/drivers/mbedtls/TARGET_STM/hash_stm32.c
   connectivity/libraries/nanostack-libservice/source/IPv6_fcf_lib/ip_fsc.c
   connectivity/libraries/nanostack-libservice/source/libBits/common_functions.c
   connectivity/libraries/nanostack-libservice/source/libList/ns_list.c
   connectivity/libraries/nanostack-libservice/source/libip4string/ip4tos.c
   connectivity/libraries/nanostack-libservice/source/libip4string/stoip4.c
   connectivity/libraries/nanostack-libservice/source/libip6string/ip6tos.c
   connectivity/libraries/nanostack-libservice/source/libip6string/stoip6.c
   connectivity/libraries/nanostack-libservice/source/nsdynmemLIB/nsdynmemLIB.c
   connectivity/libraries/nanostack-libservice/source/nsdynmemtracker/nsdynmem_tracker_lib.c
   connectivity/libraries/nanostack-libservice/source/nvmHelper/ns_nvm_helper.c
   connectivity/libraries/ppp/source/auth.c
   connectivity/libraries/ppp/source/ccp.c
   connectivity/libraries/ppp/source/chap-md5.c
   connectivity/libraries/ppp/source/chap-new.c
   connectivity/libraries/ppp/source/chap_ms.c
   connectivity/libraries/ppp/source/demand.c
   connectivity/libraries/ppp/source/eap.c
   connectivity/libraries/ppp/source/eui64.c
   connectivity/libraries/ppp/source/fsm.c
   connectivity/libraries/ppp/source/ipcp.c
   connectivity/libraries/ppp/source/ipv6cp.c
   connectivity/libraries/ppp/source/lcp.c
   connectivity/libraries/ppp/source/magic.c
   connectivity/libraries/ppp/source/mppe.c
   connectivity/libraries/ppp/source/multilink.c
   connectivity/libraries/ppp/source/polarssl/ppp_arc4.c
   connectivity/libraries/ppp/source/polarssl/ppp_des.c
   connectivity/libraries/ppp/source/polarssl/ppp_md4.c
   connectivity/libraries/ppp/source/polarssl/ppp_md5.c
   connectivity/libraries/ppp/source/polarssl/ppp_sha1.c
   connectivity/libraries/ppp/source/ppp.c
   connectivity/libraries/ppp/source/ppp_ecp.c
   connectivity/libraries/ppp/source/pppapi.c
   connectivity/libraries/ppp/source/pppcrypt.c
   connectivity/libraries/ppp/source/pppoe.c
   connectivity/libraries/ppp/source/pppol2tp.c
   connectivity/libraries/ppp/source/upap.c
   connectivity/libraries/ppp/source/utils.c
   connectivity/libraries/ppp/source/vj.c
   connectivity/lwipstack/lwip-sys/arch/lwip_checksum.c
   connectivity/lwipstack/lwip-sys/arch/lwip_memcpy.c
   connectivity/lwipstack/lwip-sys/arch/lwip_sys_arch.c
   connectivity/lwipstack/lwip-sys/lwip_random.c
   connectivity/lwipstack/lwip-sys/lwip_tcp_isn.c
   connectivity/lwipstack/lwip/src/api/lwip_api_lib.c
   connectivity/lwipstack/lwip/src/api/lwip_api_msg.c
   connectivity/lwipstack/lwip/src/api/lwip_err.c
   connectivity/lwipstack/lwip/src/api/lwip_if_api.c
   connectivity/lwipstack/lwip/src/api/lwip_netbuf.c
   connectivity/lwipstack/lwip/src/api/lwip_netdb.c
   connectivity/lwipstack/lwip/src/api/lwip_netifapi.c
   connectivity/lwipstack/lwip/src/api/lwip_sockets.c
   connectivity/lwipstack/lwip/src/api/lwip_tcpip.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_autoip.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_dhcp.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_etharp.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_icmp.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_igmp.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_ip4.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_ip4_addr.c
   connectivity/lwipstack/lwip/src/core/ipv4/lwip_ip4_frag.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_dhcp6.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_ethip6.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_icmp6.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_inet6.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_ip6.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_ip6_addr.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_ip6_frag.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_mld6.c
   connectivity/lwipstack/lwip/src/core/ipv6/lwip_nd6.c
   connectivity/lwipstack/lwip/src/core/lwip_altcp.c
   connectivity/lwipstack/lwip/src/core/lwip_altcp_alloc.c
   connectivity/lwipstack/lwip/src/core/lwip_altcp_tcp.c
   connectivity/lwipstack/lwip/src/core/lwip_def.c
   connectivity/lwipstack/lwip/src/core/lwip_dns.c
   connectivity/lwipstack/lwip/src/core/lwip_inet_chksum.c
   connectivity/lwipstack/lwip/src/core/lwip_init.c
   connectivity/lwipstack/lwip/src/core/lwip_ip.c
   connectivity/lwipstack/lwip/src/core/lwip_mem.c
   connectivity/lwipstack/lwip/src/core/lwip_memp.c
   connectivity/lwipstack/lwip/src/core/lwip_netif.c
   connectivity/lwipstack/lwip/src/core/lwip_pbuf.c
   connectivity/lwipstack/lwip/src/core/lwip_raw.c
   connectivity/lwipstack/lwip/src/core/lwip_stats.c
   connectivity/lwipstack/lwip/src/core/lwip_sys.c
   connectivity/lwipstack/lwip/src/core/lwip_tcp.c
   connectivity/lwipstack/lwip/src/core/lwip_tcp_in.c
   connectivity/lwipstack/lwip/src/core/lwip_tcp_out.c
   connectivity/lwipstack/lwip/src/core/lwip_timeouts.c
   connectivity/lwipstack/lwip/src/core/lwip_udp.c
   connectivity/lwipstack/lwip/src/netif/lwip_bridgeif.c
   connectivity/lwipstack/lwip/src/netif/lwip_bridgeif_fdb.c
   connectivity/lwipstack/lwip/src/netif/lwip_ethernet.c
   connectivity/lwipstack/lwip/src/netif/lwip_lowpan6.c
   connectivity/lwipstack/lwip/src/netif/lwip_lowpan6_ble.c
   connectivity/lwipstack/lwip/src/netif/lwip_lowpan6_common.c
   connectivity/lwipstack/lwip/src/netif/lwip_zepif.c
   connectivity/mbedtls/platform/src/hash_wrappers.c
   connectivity/mbedtls/source/aes.c
   connectivity/mbedtls/source/aesni.c
   connectivity/mbedtls/source/arc4.c
   connectivity/mbedtls/source/aria.c
   connectivity/mbedtls/source/asn1parse.c
   connectivity/mbedtls/source/asn1write.c
   connectivity/mbedtls/source/base64.c
   connectivity/mbedtls/source/bignum.c
   connectivity/mbedtls/source/blowfish.c
   connectivity/mbedtls/source/camellia.c
   connectivity/mbedtls/source/ccm.c
   connectivity/mbedtls/source/certs.c
   connectivity/mbedtls/source/chacha20.c
   connectivity/mbedtls/source/chachapoly.c
   connectivity/mbedtls/source/cipher.c
   connectivity/mbedtls/source/cipher_wrap.c
   connectivity/mbedtls/source/cmac.c
   connectivity/mbedtls/source/ctr_drbg.c
   connectivity/mbedtls/source/debug.c
   connectivity/mbedtls/source/des.c
   connectivity/mbedtls/source/dhm.c
   connectivity/mbedtls/source/ecdh.c
   connectivity/mbedtls/source/ecdsa.c
   connectivity/mbedtls/source/ecjpake.c
   connectivity/mbedtls/source/ecp.c
   connectivity/mbedtls/source/ecp_curves.c
   connectivity/mbedtls/source/entropy.c
   connectivity/mbedtls/source/entropy_poll.c
   connectivity/mbedtls/source/error.c
   connectivity/mbedtls/source/gcm.c
   connectivity/mbedtls/source/havege.c
   connectivity/mbedtls/source/hkdf.c
   connectivity/mbedtls/source/hmac_drbg.c
   connectivity/mbedtls/source/md.c
   connectivity/mbedtls/source/md2.c
   connectivity/mbedtls/source/md4.c
   connectivity/mbedtls/source/md5.c
   connectivity/mbedtls/source/memory_buffer_alloc.c
   connectivity/mbedtls/source/net_sockets.c
   connectivity/mbedtls/source/nist_kw.c
   connectivity/mbedtls/source/oid.c
   connectivity/mbedtls/source/padlock.c
   connectivity/mbedtls/source/pem.c
   connectivity/mbedtls/source/pk.c
   connectivity/mbedtls/source/pk_wrap.c
   connectivity/mbedtls/source/pkcs11.c
   connectivity/mbedtls/source/pkcs12.c
   connectivity/mbedtls/source/pkcs5.c
   connectivity/mbedtls/source/pkparse.c
   connectivity/mbedtls/source/pkwrite.c
   connectivity/mbedtls/source/platform.c
   connectivity/mbedtls/source/platform_util.c
   connectivity/mbedtls/source/poly1305.c
   connectivity/mbedtls/source/ripemd160.c
   connectivity/mbedtls/source/rsa.c
   connectivity/mbedtls/source/rsa_internal.c
   connectivity/mbedtls/source/sha1.c
   connectivity/mbedtls/source/sha256.c
   connectivity/mbedtls/source/sha512.c
   connectivity/mbedtls/source/ssl_cache.c
   connectivity/mbedtls/source/ssl_ciphersuites.c
   connectivity/mbedtls/source/ssl_cli.c
   connectivity/mbedtls/source/ssl_cookie.c
   connectivity/mbedtls/source/ssl_msg.c
   connectivity/mbedtls/source/ssl_srv.c
   connectivity/mbedtls/source/ssl_ticket.c
   connectivity/mbedtls/source/ssl_tls.c
   connectivity/mbedtls/source/ssl_tls13_keys.c
   connectivity/mbedtls/source/threading.c
   connectivity/mbedtls/source/timing.c
   connectivity/mbedtls/source/version.c
   connectivity/mbedtls/source/version_features.c
   connectivity/mbedtls/source/x509.c
   connectivity/mbedtls/source/x509_create.c
   connectivity/mbedtls/source/x509_crl.c
   connectivity/mbedtls/source/x509_crt.c
   connectivity/mbedtls/source/x509_csr.c
   connectivity/mbedtls/source/x509write_crt.c
   connectivity/mbedtls/source/x509write_csr.c
   connectivity/mbedtls/source/xtea.c
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/arm_hal_interrupt.c
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/arm_hal_random.c
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/ns_event_loop.c
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/ns_event_loop_mutex.c
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/ns_hal_init.c
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/nvm/nvm_ram.c
   connectivity/nanostack/sal-stack-nanostack-eventloop/source/event.c
   connectivity/nanostack/sal-stack-nanostack-eventloop/source/ns_timeout.c
   connectivity/nanostack/sal-stack-nanostack-eventloop/source/ns_timer.c
   connectivity/nanostack/sal-stack-nanostack-eventloop/source/system_timer.c
   events/source/equeue.c
   events/source/equeue_posix.c
   hal/source/mbed_compat.c
   hal/source/mbed_critical_section_api.c
   hal/source/mbed_flash_api.c
   hal/source/mbed_gpio.c
   hal/source/mbed_gpio_irq.c
   hal/source/mbed_itm_api.c
   hal/source/mbed_lp_ticker_api.c
   hal/source/mbed_pinmap_common.c
   hal/source/mbed_ticker_api.c
   hal/source/mbed_us_ticker_api.c
   hal/source/mpu/mbed_mpu_v7m.c
   hal/source/mpu/mbed_mpu_v8m.c
   platform/mbed-trace/source/mbed_trace.c
   platform/randlib/source/randLIB.c
   platform/source/TARGET_CORTEX_M/mbed_fault_handler.c
   platform/source/mbed_application.c
   platform/source/mbed_assert.c
   platform/source/mbed_atomic_impl.c
   platform/source/mbed_board.c
   platform/source/mbed_critical.c
   platform/source/mbed_error.c
   platform/source/mbed_error_hist.c
   platform/source/mbed_interface.c
   platform/source/mbed_mktime.c
   platform/source/mbed_mpu_mgmt.c
   platform/source/mbed_power_mgmt.c
   platform/source/mbed_sdk_boot.c
   platform/source/mbed_semihost_api.c
   platform/source/mbed_stats.c
   platform/source/mbed_wait_api_no_rtos.c
   platform/source/minimal-printf/mbed_printf_armlink_overrides.c
   platform/source/minimal-printf/mbed_printf_implementation.c
   platform/source/minimal-printf/mbed_printf_wrapper.c
   platform/source/newlib_nano_malloc_workaround.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/Legacy/stm32f4xx_hal_can_legacy.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_adc_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_can.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_cec.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_cortex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_crc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_cryp.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_cryp_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dac.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dac_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dcmi.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dcmi_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dfsdm.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma2d.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dma_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_dsi.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_eth.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_exti.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_flash_ramfunc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_fmpi2c.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_fmpi2c_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_fmpsmbus.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_fmpsmbus_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_gpio.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_hash.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_hash_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_hcd.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2c_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2s.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_i2s_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_irda.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_iwdg.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_lptim.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_ltdc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_ltdc_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_mmc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_nand.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_nor.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_pccard.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_pcd.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_pcd_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_pwr_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_qspi.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_rcc_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_rng.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_rtc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_rtc_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_sai.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_sai_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_sd.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_sdram.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_smartcard.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_smbus.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_spdifrx.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_spi.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_sram.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_tim_ex.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_uart.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_usart.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_hal_wwdg.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_adc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_crc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_dac.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_dma.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_dma2d.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_exti.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_fmc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_fmpi2c.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_fsmc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_gpio.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_i2c.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_lptim.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_pwr.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_rcc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_rng.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_rtc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_sdmmc.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_spi.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_tim.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_usart.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_usb.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/STM32F4xx_HAL_Driver/stm32f4xx_ll_utils.c
   targets/TARGET_STM/TARGET_STM32F4/STM32Cube_FW/system_stm32f4xx.c
   targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/TARGET_NUCLEO_F429ZI/PeripheralPins.c
   targets/TARGET_STM/TARGET_STM32F4/TARGET_STM32F429xI/system_clock.c
   targets/TARGET_STM/TARGET_STM32F4/analogin_device.c
   targets/TARGET_STM/TARGET_STM32F4/analogout_device.c
   targets/TARGET_STM/TARGET_STM32F4/flash_api.c
   targets/TARGET_STM/TARGET_STM32F4/gpio_irq_device.c
   targets/TARGET_STM/TARGET_STM32F4/pwmout_device.c
   targets/TARGET_STM/TARGET_STM32F4/serial_device.c
   targets/TARGET_STM/TARGET_STM32F4/spi_api.c
   targets/TARGET_STM/analogin_api.c
   targets/TARGET_STM/analogout_api.c
   targets/TARGET_STM/can_api.c
   targets/TARGET_STM/gpio_api.c
   targets/TARGET_STM/gpio_irq_api.c
   targets/TARGET_STM/hal_tick_overrides.c
   targets/TARGET_STM/i2c_api.c
   targets/TARGET_STM/lp_ticker.c
   targets/TARGET_STM/mbed_crc_api.c
   targets/TARGET_STM/mbed_overrides.c
   targets/TARGET_STM/ospi_api.c
   targets/TARGET_STM/pinmap.c
   targets/TARGET_STM/port_api.c
   targets/TARGET_STM/pwmout_api.c
   targets/TARGET_STM/qspi_api.c
   targets/TARGET_STM/reset_reason.c
   targets/TARGET_STM/rtc_api.c
   targets/TARGET_STM/serial_api.c
   targets/TARGET_STM/sleep.c
   targets/TARGET_STM/stm_spi_api.c
   targets/TARGET_STM/trng_api.c
   targets/TARGET_STM/us_ticker.c
   targets/TARGET_STM/watchdog_api.c
   cmsis/device/rtos/source/mbed_rtx_idle.cpp
   connectivity/drivers/emac/TARGET_STM/stm32xx_emac.cpp
   connectivity/drivers/emac/TARGET_STM/stm32xx_eth_irq_callback.cpp
   connectivity/drivers/mbedtls/TARGET_STM/aes_alt.cpp
   connectivity/drivers/mbedtls/TARGET_STM/ccm_alt.cpp
   connectivity/drivers/mbedtls/TARGET_STM/gcm_alt.cpp
   connectivity/drivers/mbedtls/TARGET_STM/md5_alt.cpp
   connectivity/drivers/mbedtls/TARGET_STM/sha1_alt.cpp
   connectivity/drivers/mbedtls/TARGET_STM/sha256_alt.cpp
   connectivity/libraries/ppp/source/ppp_service.cpp
   connectivity/libraries/ppp/source/ppp_service_if.cpp
   connectivity/libraries/ppp/source/pppos.cpp
   connectivity/lwipstack/source/LWIPInterface.cpp
   connectivity/lwipstack/source/LWIPInterfaceEMAC.cpp
   connectivity/lwipstack/source/LWIPInterfaceL3IP.cpp
   connectivity/lwipstack/source/LWIPInterfacePPP.cpp
   connectivity/lwipstack/source/LWIPMemoryManager.cpp
   connectivity/lwipstack/source/LWIPStack.cpp
   connectivity/lwipstack/source/lwip_tools.cpp
   connectivity/mbedtls/platform/src/mbed_trng.cpp
   connectivity/mbedtls/platform/src/platform_alt.cpp
   connectivity/mbedtls/platform/src/shared_rng.cpp
   connectivity/mbedtls/platform/src/timing_mbed.cpp
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/arm_hal_fhss_timer.cpp
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/arm_hal_timer.cpp
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/ns_event_loop_mbed.cpp
   connectivity/nanostack/nanostack-hal-mbed-cmsis-rtos/ns_file_system_api.cpp
   connectivity/netsocket/source/DTLSSocket.cpp
   connectivity/netsocket/source/DTLSSocketWrapper.cpp
   connectivity/netsocket/source/EMACInterface.cpp
   connectivity/netsocket/source/EthernetInterface.cpp
   connectivity/netsocket/source/ICMPSocket.cpp
   connectivity/netsocket/source/InternetDatagramSocket.cpp
   connectivity/netsocket/source/InternetSocket.cpp
   connectivity/netsocket/source/L3IPInterface.cpp
   connectivity/netsocket/source/NetStackMemoryManager.cpp
   connectivity/netsocket/source/NetworkInterface.cpp
   connectivity/netsocket/source/NetworkInterfaceDefaults.cpp
   connectivity/netsocket/source/NetworkStack.cpp
   connectivity/netsocket/source/PPPInterface.cpp
   connectivity/netsocket/source/SocketAddress.cpp
   connectivity/netsocket/source/SocketStats.cpp
   connectivity/netsocket/source/TCPSocket.cpp
   connectivity/netsocket/source/TLSSocket.cpp
   connectivity/netsocket/source/TLSSocketWrapper.cpp
   connectivity/netsocket/source/UDPSocket.cpp
   connectivity/netsocket/source/WiFiAccessPoint.cpp
   connectivity/netsocket/source/nsapi_dns.cpp
   connectivity/netsocket/source/nsapi_ppp.cpp
   drivers/source/AnalogIn.cpp
   drivers/source/AnalogOut.cpp
   drivers/source/BufferedSerial.cpp
   drivers/source/BusIn.cpp
   drivers/source/BusInOut.cpp
   drivers/source/BusOut.cpp
   drivers/source/CAN.cpp
   drivers/source/DigitalIn.cpp
   drivers/source/DigitalInOut.cpp
   drivers/source/DigitalOut.cpp
   drivers/source/FlashIAP.cpp
   drivers/source/I2C.cpp
   drivers/source/I2CSlave.cpp
   drivers/source/InterruptIn.cpp
   drivers/source/MbedCRC.cpp
   drivers/source/OSPI.cpp
   drivers/source/PortIn.cpp
   drivers/source/PortInOut.cpp
   drivers/source/PortOut.cpp
   drivers/source/PwmOut.cpp
   drivers/source/QSPI.cpp
   drivers/source/ResetReason.cpp
   drivers/source/SPI.cpp
   drivers/source/SPISlave.cpp
   drivers/source/SerialBase.cpp
   drivers/source/SerialWireOutput.cpp
   drivers/source/Ticker.cpp
   drivers/source/Timeout.cpp
   drivers/source/Timer.cpp
   drivers/source/TimerEvent.cpp
   drivers/source/UnbufferedSerial.cpp
   drivers/source/Watchdog.cpp
   events/source/EventQueue.cpp
   events/source/equeue_mbed.cpp
   events/source/mbed_shared_queues.cpp
   hal/source/LowPowerTickerWrapper.cpp
   hal/source/mbed_lp_ticker_wrapper.cpp
   hal/source/mbed_pinmap_default.cpp
   hal/source/static_pinmap.cpp
   hal/usb/source/mbed_usb_phy.cpp
   platform/cxxsupport/mstd_mutex.cpp
   platform/source/ATCmdParser.cpp
   platform/source/CThunkBase.cpp
   platform/source/CriticalSectionLock.cpp
   platform/source/DeepSleepLock.cpp
   platform/source/FileBase.cpp
   platform/source/FileHandle.cpp
   platform/source/FilePath.cpp
   platform/source/FileSystemHandle.cpp
   platform/source/LocalFileSystem.cpp
   platform/source/Stream.cpp
   platform/source/SysTimer.cpp
   platform/source/mbed_alloc_wrappers.cpp
   platform/source/mbed_mem_trace.cpp
   platform/source/mbed_os_timer.cpp
   platform/source/mbed_poll.cpp
   platform/source/mbed_retarget.cpp
   platform/source/mbed_rtc_time.cpp
   platform/source/mbed_thread.cpp
   rtos/source/ConditionVariable.cpp
   rtos/source/EventFlags.cpp
   rtos/source/Kernel.cpp
   rtos/source/Mutex.cpp
   rtos/source/Semaphore.cpp
   rtos/source/ThisThread.cpp
   rtos/source/Thread.cpp
   storage/blockdevice/COMPONENT_FLASHIAP/source/FlashIAPBlockDevice.cpp
   storage/blockdevice/source/BufferedBlockDevice.cpp
   storage/blockdevice/source/ChainingBlockDevice.cpp
   storage/blockdevice/source/ExhaustibleBlockDevice.cpp
   storage/blockdevice/source/FlashSimBlockDevice.cpp
   storage/blockdevice/source/HeapBlockDevice.cpp
   storage/blockdevice/source/MBRBlockDevice.cpp
   storage/blockdevice/source/ObservingBlockDevice.cpp
   storage/blockdevice/source/ProfilingBlockDevice.cpp
   storage/blockdevice/source/ReadOnlyBlockDevice.cpp
   storage/blockdevice/source/SFDP.cpp
   storage/blockdevice/source/SlicingBlockDevice.cpp
   targets/TARGET_STM/USBPhy_STM32.cpp)

set(MCU_COMPILE_OPTIONS_RELWITHDEBINFO
   -DMBED_TRAP_ERRORS_ENABLED=1
   -g
   -Os)

set(MCU_COMPILE_OPTIONS_DEBUG
   -DMBED_TRAP_ERRORS_ENABLED=1
   -DMBED_DEBUG
   -Og)

set(MCU_COMPILE_OPTIONS_RELEASE
   -g
   -Os
   -DNDEBUG)

set(MCU_LINK_OPTIONS_RELWITHDEBINFO)

set(MCU_LINK_OPTIONS_DEBUG)

set(MCU_LINK_OPTIONS_RELEASE)

