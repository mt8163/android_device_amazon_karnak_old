
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/core.mk)
$(call inherit-product, device/amazon/karnak/device.mk)

LINEAGEOS_VERSION := 16.0
PRODUCT_CHARACTERISTICS := tablet
LOCAL_PATH := device/amazon/karnak
DEVICE_FOLDER := device/amazon/karnak



PRODUCT_NAME := lineage_karnak
PRODUCT_DEVICE := karnak
PRODUCT_BRAND := Fire
PRODUCT_MODEL := KFKAWI
PRODUCT_BOARD := karnak
PRODUCT_MANUFACTURER := amzn

# Device uses high-density artwork where available
PRODUCT_AAPT_CONFIG := normal large
PRODUCT_AAPT_PREF_CONFIG := hdpi



# Default.prop
PRODUCT_DEFAULT_PROPERTY_OVERRIDES += \
    persist.service.acm.enable=0 \
    persist.sys.dun.override=0 \
    camera.disable_zsl_mode=1 \
    sys.usb.ffs.aio_compat=1 \
    ro.mount.fs=EXT4 \
    ro.mtk_key_manager_kb_path=1 \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1

#Build.prop
PRODUCT_PROPERTY_OVERRIDES += \
    persist.sys.usb.config=mtp,adb \
    persist.service.adb.enable=1 \
    persist.service.debuggable=1



# Camera
PRODUCT_PACKAGES += \
    Snap



# Permissions
PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/tablet_core_hardware.xml:system/etc/permissions/tablet_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
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
    frameworks/native/data/etc/android.hardware.bluetooth_le.xml:system/etc/permissions/android.hardware.bluetooth_le.xml 




# SBIN
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/sbin/adbd:root/sbin/adbd \
    $(LOCAL_PATH)/sbin/crashreport:root/sbin/crashreport \
    $(LOCAL_PATH)/sbin/healthd:root/sbin/healthd \
    $(LOCAL_PATH)/sbin/multi_init:root/sbin/multi_init

#Bins
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/binary/md32_d.bin:root/md32_d.bin \
    $(LOCAL_PATH)/binary/md32_d.bin:root/md32_p.bin


#KeyBoard
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/keylayout/mtk-kpd.kl:system/usr/keylayout/mtk-kpd.kl

#thermal
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/thermal/thermal.conf:system/vendor/etc/.tp/thermal.conf \
    $(LOCAL_PATH)/thermal/thermal.off.conf:system/vendor/etc/.tp/thermal.off.conf \
    $(LOCAL_PATH)/thermal/.ht120.mtc:system/vendor/etc/.tp/.ht120.mtc 


PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/vendor/audio_device.xml:system/vendor/etc/audio_device.xml \
    $(LOCAL_PATH)/vendor/audio_em.xml:system/vendor/etc/audio_em.xml \
    $(LOCAL_PATH)/vendor/mtklog-config.prop:system/vendor/etc/mtklog-config.prop \
    $(LOCAL_PATH)/vendor/mtk_omx_core.cfg:system/vendor/etc/mtk_omx_core.cfg \
    $(LOCAL_PATH)/vendor/radvd.conf:system/vendor/etc/radvd.conf \
    $(LOCAL_PATH)/vendor/throttle.sh:system/vendor/etc/throttle.sh
    
    
    
    
 Create symlinks.
LOCAL_POST_INSTALL_CMD := $(hide) mkdir -p $(TARGET_ROOT_OUT)/sbin; \
    ln -sf ../init $(TARGET_ROOT_OUT)/sbin/ueventd; \
    ln -sf ../init $(TARGET_ROOT_OUT)/sbin/watchdogd
#libs
PRODUCT_COPY_FILES += \
   $(LOCAL_PATH)/vendor/lib/hw/audio.primary.mt8163.so:system/lib/hw/audio.primary.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/audio.usb.mt8163.so:system/lib/hw/audio.usb.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/camera.mt8163.so:system/lib/hw/camera.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/gatekeeper.mt8163.so:system/lib/hw/gatekeeper.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/gralloc.mt8163.so:system/lib/hw/gralloc.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/hwcomposer.mt8163.so:system/lib/hw/hwcomposer.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/lights.mt8163.so:system/lib/hw/lights.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/memtrack.mt8163.so:system/lib/hw/memtrack.mt8163.so \
   $(LOCAL_PATH)/vendor/lib/hw/memtrack.mt8163.so:system/lib/hw/sensors.mt8163.so 
   

