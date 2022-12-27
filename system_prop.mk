#
# Copyright (C) 2019-2020 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.acm.enable=0 \
    camera.disable_zsl_mode=1 \
    sys.usb.ffs.aio_compat=1 \
    ro.mount.fs=EXT4 \
    ro.mtk_key_manager_kb_path=1 \
    persist.sys.debug.multi_window=true

# ADB on recovery
PRODUCT_PROPERTY_OVERRIDES += \
    service.adb.root=1

# add support for USB storage type
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.isUsbOtgEnabled=1

# WLAN Interface
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.tethering.interface=ap0

# Mali
PRODUCT_PROPERTY_OVERRIDES += \
    ro.opengles.version=196609 \
    ro.hardware.gralloc=mt8163.mali

# Wifi Direct
PRODUCT_PROPERTY_OVERRIDES += \
    wifi.direct.interface=p2p0


# USB Charge only function
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.usb.charging.only=yes

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.camera.sound.forced=0 \
    ro.audio.silent=0

# Disable partial updates (formerly known as 'dirty region') for Mali
PRODUCT_PROPERTY_OVERRIDES += \
    debug.hwui.use_partial_updates=false

# Media Settings
PRODUCT_PROPERTY_OVERRIDES += \
    media.settings.xml=/vendor/etc/media_profiles_V1_0.xml \
    debug.stagefright.ccodec=0

# Mediatek version
PRODUCT_PROPERTY_OVERRIDES += \
    Build.BRAND=MTK \
    ro.mediatek.chip_ver=S01 \
    ro.mediatek.platform=MT8163 \
    ro.mediatek.version.release=ALPS.W10.24.p0 \
    ro.vendor.mediatek.platform=MT8163 \
    ro.vendor.mediatek.version.branch=alps-mp-p0.mp6.tc6sp \
    ro.vendor.mediatek.version.release=alps-mp-p0.mp6.tc6sp-of.p14

# Mediatek Properties
PRODUCT_PROPERTY_OVERRIDES += \
    service.wcn.driver.ready=no \
    ro.mtk_key_manager_kb_path=1 \
    ro.mtk_key_manager_support=1 \
    ro.mtk_sec_video_path_support=1 \
    ro.vendor.mtk_config_max_dram_size=0x100000000 \
    ro.vendor.mtk_in_house_tee_support=true \
    ro.vendor.mtk_pq_color_mode=1 \
    ro.vendor.mtk_protocol1_rat_config=no \
    ro.vendor.mtk_ril_mode=no \
    ro.vendor.mtk_sec_video_path_support=1 \
    ro.vendor.wfd.dummy.enable=1 \
    ro.vendor.wfd.iframesize.level=0 \
    vendor.camera.mdp.cz.enable=0 \
    vendor.camera.mdp.dre.enable=0 \
    vendor.debug.log.coredump.enable=n \
    vendor.mtk.vdec.waitkeyframeforplay=1

# Connectivity
PRODUCT_PRODUCT_PROPERTIES += \
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
    ro.vendor.mtk_dhcpv6c_wifi=1  \
    persist.camera.HAL3.enabled=1

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.mtk_audenh_support=1 \
    ro.mtk_audio_profiles=1 \
    ro.mtk_bessurround_support=1 \
    ro.vendor.mtk_audio_alac_support=1 \
    ro.vendor.mtk_audio_ape_support=1 \
    ro.vendor.mtk_audio_tuning_tool_ver=V2.2 \
    ro.vendor.mtk_besloudness_support=1

# Volume steps
PRODUCT_PROPERTY_OVERRIDES += \
    ro.config.alarm_vol_steps=25 \
    ro.config.media_vol_steps=25 \
    ro.config.notification_vol_steps=25 \
    ro.config.ring_vol_steps=25 \
    ro.config.vc_call_vol_steps=25

# Telephony
PRODUCT_PROPERTY_OVERRIDES += \
    ro.radio.noril=1 \
    ro.carrier=wifi-only

# LMK
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lmk.critical_upgrade=true \
    ro.lmk.downgrade_pressure=60 \
    ro.lmk.kill_heaviest_task=false \
    ro.lmk.log_stats=true \
    ro.lmk.upgrade_pressure=40 \
    ro.lmk.use_psi=false

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.present_time_offset_from_vsync_ns=0 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=5 \
    ro.surface_flinger.force_hwc_copy_for_virtual_displays=true

# Disable Strict Mode
PRODUCT_PRODUCT_PROPERTIES += \
    persist.sys.strictmode.disable=1 \
    persist.sys.strictmode.visual=0

# Zygote Preforking
PRODUCT_PROPERTY_OVERRIDES += \
    persist.device.config.runtime_native.uasp_pool_enabled=true

# Memory optimization
PRODUCT_PRODUCT_PROPERTIES += \
    ro.sys.fw.bservice_enable=true \
    ro.sys.fw.bservice_limit=5 \
    ro.sys.fw.bservice_age=5000 \
    ro.am.reschedule_service=true \
    ro.sys.fw.bg_apps_limit=24

# Force Lock Screen Rotation
PRODUCT_PRODUCT_PROPERTIES += \
    log.tag.launcher_force_rotate=VERBOSE \
    lockscreen.rot_override=true

# Fix rank of OMX audio codec components
PRODUCT_PROPERTY_OVERRIDES += \
    debug.stagefright.omx_default_rank.sw-audio=1 \
    debug.stagefright.omx_default_rank=0

# Pixel identification
PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=google/redfin/redfin:11/RQ3A.211001.001/7641976:user/release-keys

# XML
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    persist.sys.binary_xml=false
