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
    persist.media.treble_omx=false \
    debug.stagefright.ccodec=0


# Mediatek Properties
PRODUCT_PROPERTY_OVERRIDES += \
    service.wcn.driver.ready=no \
    ro.mtk_key_manager_kb_path=1 \
    ro.mediatek.platform=MT8163 \
    mtk_in_house_tee_support=true \
    ro.mtk_sec_video_path_support=1 \
    persist.mtk.wcn.combo.chipid=-1

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

# Pixel identification
PRODUCT_PRODUCT_PROPERTIES += \
    ro.build.fingerprint=google/flame/flame:10/QQ3A.200605.001/6392402:user/release-keys
