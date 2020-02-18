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

# Display
PRODUCT_PROPERTY_OVERRIDES += \
ro.sf.lcd_density=213

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
    ro.lmk.use_psi=true

# SurfaceFlinger
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.surface_flinger.protected_contents=true \
    ro.surface_flinger.running_without_sync_framework=true \
    ro.surface_flinger.present_time_offset_from_vsync_ns=0 \
    ro.surface_flinger.max_frame_buffer_acquired_buffers=3 \
