$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
LOCAL_PATH := device/amazon/karnak
DEVICE_FOLDER := device/amazon/karnak

# Build Date
PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0

PRODUCT_CHARACTERISTICS := tablet

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.acm.enable=0 \
    camera.disable_zsl_mode=1 \
    sys.usb.ffs.aio_compat=1 \
    ro.mount.fs=EXT4 \
    ro.mtk_key_manager_kb_path=1 \
    persist.sys.debug.multi_window=true

# Overlays
DEVICE_PACKAGE_OVERLAYS += \
    $(LOCAL_PATH)/overlay \
    $(LOCAL_PATH)/overlay-lineage

#Camera Legacy
PRODUCT_PROPERTY_OVERRIDES += \
     media.stagefright.legacyencoder=true \
     media.stagefright.less-secure=true

# Lights
PRODUCT_PACKAGES +=\
    lights.mt8163

# Power
PRODUCT_PACKAGES +=\
    power.mt8163

# Thermal
PRODUCT_PACKAGES +=\
    thermal.mt8163 \
    thermal_manager

# Wi-Fi
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \
    libwifi-hal-mt66xx

# Sensor
PRODUCT_PACKAGES += \
    libsensorndkbridge

# Audio
PRODUCT_PACKAGES += \
    audio.r_submix.mt8163 \
    audio.usb.default \
    audio.a2dp.default \
    audio_policy.stub \
    audio.r_submix.default \
    audio.usb.default \
    libaudio-resampler \
    libaudioroute \
    libtinyalsa \
    libalsautils \
    libtinycompress \
    libtinyxml \
    libalsautils \
    tinymix \
    tinypcminfo \
    tinycap \
    tinyplay

# EGL
PRODUCT_PACKAGES += \
  libGLES_android

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/rootdir,root) 

# Codecs
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_audio.xml \
  $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_mediatek_video.xml \
  $(LOCAL_PATH)/configs/media_codecs_performance.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_performance.xml \
  $(LOCAL_PATH)/configs/media_profiles_V1_0.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_profiles_V1_0.xml \
  $(LOCAL_PATH)/configs/media_codecs.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_audio.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_telephony.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video_le.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:$(TARGET_COPY_OUT_VENDOR)/etc/media_codecs_google_video.xml

# Audio Policy
PRODUCT_COPY_FILES += \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/a2dp_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/a2dp_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/audio_policy_volumes.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_volumes.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/default_volume_tables.xml:$(TARGET_COPY_OUT_VENDOR)/etc/default_volume_tables.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/r_submix_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/r_submix_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/usb_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/usb_audio_policy_configuration.xml \
    $(TOPDIR)frameworks/av/services/audiopolicy/config/hearing_aid_audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/hearing_aid_audio_policy_configuration.xml \
    $(LOCAL_PATH)/configs/audio_policy_configuration.xml:$(TARGET_COPY_OUT_VENDOR)/etc/audio_policy_configuration.xml \

# Seccomp_policy
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/seccomp-policy/mediacodec-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediacodec.policy \
    $(LOCAL_PATH)/seccomp-policy/mediaextractor-seccomp.policy:$(TARGET_COPY_OUT_VENDOR)/etc/seccomp_policy/mediaextractor.policy

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/wifi/wpa_supplicant.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant.conf \
    $(LOCAL_PATH)/wifi/p2p_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/p2p_supplicant_overlay.conf \
    $(LOCAL_PATH)/wifi/wpa_supplicant_overlay.conf:$(TARGET_COPY_OUT_VENDOR)/etc/wifi/wpa_supplicant_overlay.conf

# Camera
PRODUCT_PACKAGES += \
    Camera2 \
    libcamera_parameters_mtk \

# DRM
PRODUCT_PACKAGES += \
    libdrm \
    libmockdrmcryptoplugin \
    libdrmclearkeyplugin

# Camera Legacy
PRODUCT_PROPERTY_OVERRIDES += \
     media.stagefright.legacyencoder=true \
     media.stagefright.less-secure=true

# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0

# etc
PRODUCT_PACKAGES += \
    libion \
    libcap

# Other
PRODUCT_PACKAGES += \
    librs_jni \
    libnl_2 \
    com.android.future.usb.accessory

# Symbols
PRODUCT_PACKAGES += \
    libmtk_symbols

# Bluetooth
PRODUCT_PACKAGES += \
    libbluetooth_mtk \
    libbt-vendor 

# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:$(TARGET_COPY_OUT_VENDOR)/etc/permissions/android.software.sip.voip.xml \

# Libshims
PRODUCT_PACKAGES += \
     libshim_asp \
     libshim_egl \
     libshim_gui \
     libshim_camera \
     libshim_sensor \
     libshim_protobuf \
     libshim_dha \
     libshim_drm 

# Hidl
include $(LOCAL_PATH)/hidl.mk

include vendor/amazon/karnak/karnak-vendor.mk
include vendor/amazon/mt8163/mt8163-vendor.mk

# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)
