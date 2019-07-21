$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/amazon/karnak/device.mk)

PRODUCT_CHARACTERISTICS := tablet
LOCAL_PATH := device/amazon/karnak
DEVICE_FOLDER := device/amazon/karnak



PRODUCT_DEVICE := karnak
PRODUCT_NAME := lineage_karnak
PRODUCT_BRAND := google
PRODUCT_MODEL := KFKAWI
PRODUCT_BOARD := karnak
PRODUCT_MANUFACTURER := amzn
# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi

# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    ro.adb.secure=0 \
	ro.secure=0 \
	ro.debuggable=1 \
    persist.service.acm.enable=0 \
    persist.sys.dun.override=0 \
    camera.disable_zsl_mode=1 \
    sys.usb.ffs.aio_compat=1 \
    ro.mount.fs=EXT4 \
    ro.mtk_key_manager_kb_path=1 \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1 \
    persist.sys.debug.multi_window=true

#Build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

BOARD_SECCOMP_POLICY := \
    $(LOCAL_PATH)/seccomp-policy


#HW
PRODUCT_PACKAGES +=\
    lights.mt8163.so
  


#wifi
PRODUCT_PACKAGES += \
	wifi2agps \

#wpa 
PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf \




# Audio


PRODUCT_PACKAGES += \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio@2.0-impl 

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
	libbluetooth_jni

# Display
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service \


# Net
PRODUCT_PACKAGES += \
    netutils-wrapper-1.0



# Ramdisk
PRODUCT_COPY_FILES += \
    $(call find-copy-subdir-files,*,$(DEVICE_FOLDER)/rootdir,root)


# Light
PRODUCT_PACKAGES += \
    lights.mt8163 \
	android.hardware.light@2.0-impl-mediatek \
    android.hardware.light@2.0-service-mediatek


#CODECS
PRODUCT_COPY_FILES += \
  $(LOCAL_PATH)/configs/media_codecs_dolby_audio.xml:system/etc/media_codecs_dolby_audio.xml \
  $(LOCAL_PATH)/configs/media_codecs_mediatek_audio.xml:system/etc/media_codecs_mediatek_audio.xml \
  $(LOCAL_PATH)/configs/media_codecs_mediatek_video.xml:system/etc/media_codecs_mediatek_video.xml \
  $(LOCAL_PATH)/configs/media_codecs_performance.xml:system/etc/media_codecs_performance.xml \
  $(LOCAL_PATH)/configs/media_profiles.xml:system/etc/media_profiles.xml \
  $(LOCAL_PATH)/configs/media_codecs.xml:system/etc/media_codecs.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_audio.xml:system/etc/media_codecs_google_audio.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_telephony.xml:system/etc/media_codecs_google_telephony.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video_le.xml:system/etc/media_codecs_google_video_le.xml \
  frameworks/av/media/libstagefright/data/media_codecs_google_video.xml:system/etc/media_codecs_google_video.xml 

# Camera
PRODUCT_PACKAGES += \
    Snap

# DRM
PRODUCT_PACKAGES += \
    libdrm \
    libmockdrmcryptoplugin \
    libdrmclearkeyplugin \
	android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service


# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0


# Keymaster
PRODUCT_PACKAGES += \
   android.hardware.keymaster@3.0-impl \
   android.hardware.keymaster@3.0-service




PRODUCT_PACKAGES += \
    libion \
    libcap



# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.barometer.xml:system/etc/permissions/android.hardware.sensor.barometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepcounter.xml:system/etc/permissions/android.hardware.sensor.stepcounter.xml \
    frameworks/native/data/etc/android.hardware.sensor.stepdetector.xml:system/etc/permissions/android.hardware.sensor.stepdetector.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \


#libshims
PRODUCT_PACKAGES += \
libshim_asp \
libshim_egl \
libshim_ui  


# call dalvik heap config
$(call inherit-product, frameworks/native/build/tablet-7in-hdpi-1024-dalvik-heap.mk)

# call hwui memory config
$(call inherit-product-if-exists, frameworks/native/build/phone-xxhdpi-2048-hwui-memory.mk)

   
