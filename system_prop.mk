# SPDX-License-Identifier: Apache-2.0
# Copyright (C) 2024 LineageOS

# PM Properties
PRODUCT_PROPERTY_OVERRIDES += \
    pm.dexopt.downgrade_after_inactive_days=7 \
    pm.dexopt.shared=quicken

# LLKD Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.llk.enable=false

# Media Properties
PRODUCT_PROPERTY_OVERRIDES += \
    debug.fdsan=warn_once \
    debug.stagefright.ccodec=0 \
    media.stagefright.thumbnail.prefer_hw_codecs=true \
    ro.mtk_key_manager_kb_path=1 \
    ro.mtk_key_manager_support=1 \
    ro.mtk_sec_video_path_support=1 \
    ro.vendor.mtk_in_house_tee_support=true \
    ro.vendor.mtk_sec_video_path_support=1 \
    vendor.mtk.vdec.waitkeyframeforplay=1

# Watchdog Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hw_timeout_multiplier=6

# Audio Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mtk_audenh_support=1 \
    ro.mtk_audio_profiles=1 \
    ro.mtk_bessurround_support=1 \
    ro.vendor.mtk_audio_alac_support=1 \
    ro.vendor.mtk_audio_ape_support=1 \
    ro.vendor.mtk_audio_tuning_tool_ver=V2.2 \
    ro.vendor.mtk_besloudness_support=1

# Dalvik Properties
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-minidebuginfo=false \
    dalvik.vm.madvise-random=true \
    dalvik.vm.minidebuginfo=false

# RIL Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=1 \
    ro.carrier=wifi-only

# Display Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.egl=mali \
    debug.sf.disable_backpressure=1 \
    debug.sf.disable_client_composition_cache=1 \
    debug.sf.enable_transaction_tracing=false \
    debug.sf.use_phase_offsets_as_durations=1 \
    debug.sf.late.sf.duration=27600000 \
    debug.sf.late.app.duration=20000000 \
    debug.sf.early.sf.duration=27600000 \
    debug.sf.early.app.duration=20000000 \
    debug.sf.earlyGl.sf.duration=27600000 \
    debug.sf.earlyGl.app.duration=20000000 \
    debug.sf.hwc.min.duration=17000000 \
    ro.vendor.mtk_pq_color_mode=1 \
    ro.opengles.version=196609 \
    service.sf.prime_shader_cache=0

# Keymaster Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.crypto.volume.filenames_mode=aes-256-cts \
    ro.vendor.mtk_in_house_tee_support=true

# LMK Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.lmk.kill_heaviest_task=true \
    ro.lmk.kill_timeout_ms=100 \
    ro.lmk.log_stats=false \
    ro.lmk.upgrade_pressure=60 \
    ro.lmk.use_minfree_levels=true \
    ro.lmk.use_new_strategy=true

# Wi-Fi Properties
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.direct.interface=p2p0 \
    wifi.interface=wlan0 \
    wifi.tethering.interface=ap0 \
    ro.vendor.wlan.gen=gen2 \
    service.wcn.driver.ready=no \
    persist.vendor.connsys.chipid=-1 \
    persist.vendor.connsys.coredump.mode=0 \
    persist.vendor.connsys.dynamic.dump=0 \
    persist.vendor.connsys.patch.version=-1 \
    persist.vendor.pms_removable=1 \
    persist.vendor.vilte_support=0 \
    persist.vendor.viwifi_support=0 \
    vendor.connsys.driver.ready=no \
    ro.vendor.mtk_dhcpv6c_wifi=1

# Bluetooth Properties
PRODUCT_PROPERTY_OVERRIDES += \
    bluetooth.device.class_of_device=90,2,12 \
    bluetooth.profile.a2dp.source.enabled=true \
    bluetooth.profile.asha.central.enabled=true \
    bluetooth.profile.avrcp.target.enabled=true \
    bluetooth.profile.bas.client.enabled=true \
    bluetooth.profile.gatt.enabled=true \
    bluetooth.profile.hfp.ag.enabled=true \
    bluetooth.profile.hid.device.enabled=true \
    bluetooth.profile.hid.host.enabled=true \
    bluetooth.profile.map.server.enabled=true \
    bluetooth.profile.opp.enabled=true \
    bluetooth.profile.pan.nap.enabled=true \
    bluetooth.profile.pan.panu.enabled=true \
    bluetooth.profile.pbap.server.enabled=true \
    bluetooth.profile.sap.server.enabled=true \
    bluetooth.hci.erroneous_data_reporting.enabled=false

# DRM Properties
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.mtk_oma_drm_support=1 \
    ro.mtk_cta_drm_support=1 \
    ro.vendor.mtk_widevine_drm_l1_support=1 \
    drm.service.enabled=true

# Zygote Properties
PRODUCT_PROPERTY_OVERRIDES += \
    zygote.critical_window.minute=10

# OTG Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1

# Camera Properties
PRODUCT_PROPERTY_OVERRIDES += \
    persist.camera.HAL3.enabled=1

# Media Settings
PRODUCT_PROPERTY_OVERRIDES += \
    media.settings.xml=/vendor/etc/media_profiles_V1_0.xml

# LCD Density
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=213
