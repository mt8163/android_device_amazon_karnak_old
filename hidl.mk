# HIDL
PRODUCT_PACKAGES += \
    android.hidl.base@1.0 \
    android.hidl.manager@1.0

# Camera HAL
PRODUCT_PACKAGES += \
    camera.device@1.0-impl \
    camera.device@3.2-impl \
    android.hardware.camera.provider@2.4-impl \
    android.hardware.camera.provider@2.4-service

# Keymaster
PRODUCT_PACKAGES += \
   android.hardware.keymaster@3.0-impl \
   android.hardware.keymaster@3.0-service

# Thermal
PRODUCT_PACKAGES += \
    android.hardware.thermal@1.0-impl \
    android.hardware.thermal@1.0-service

# DRM
PRODUCT_PACKAGES += \
    android.hardware.drm@1.0-impl \
    android.hardware.drm@1.0-service \
    android.hardware.drm@1.1-service.clearkey \

# Light
PRODUCT_PACKAGES += \
    android.hardware.light@2.0-impl-mediatek \
    android.hardware.light@2.0-service-mediatek \
    android.hardware.light@2.0-service \
    android.hardware.light@2.0-impl

# Power
PRODUCT_PACKAGES += \
    vendor.mediatek.hardware.power@1.1-impl \
    vendor.mediatek.hardware.power@1.1-service \
    android.hardware.power@1.0-impl-mediatek \
    android.hardware.power@1.0-service-mediatek

# Usb HAL
PRODUCT_PACKAGES += \
    android.hardware.usb@1.0 \
    android.hardware.usb@1.0-service.basic

# USB
PRODUCT_PACKAGES += \
   android.hardware.usb.gadget@1.0-impl \
   android.hardware.usb.gadget@1.0-service

# Graphics
PRODUCT_PACKAGES += \
    android.hardware.graphics.allocator@2.0-impl \
    android.hardware.graphics.allocator@2.0-service \
    android.hardware.graphics.mapper@2.0-impl \
    android.hardware.graphics.composer@2.1-impl \
    android.hardware.graphics.composer@2.1-service

# Memtrack
PRODUCT_PACKAGES += \
    android.hardware.memtrack@1.0-impl \
    android.hardware.memtrack@1.0-service

# Sensors
PRODUCT_PACKAGES += \
    android.hardware.sensors@1.0-impl \
    android.hardware.sensors@1.0-service 

# Power
PRODUCT_PACKAGES += \
    android.hardware.power@1.0-service \
    android.hardware.power@1.0-impl

# Audio
PRODUCT_PACKAGES += \
    android.hardware.audio.effect@2.0-impl \
    android.hardware.audio@2.0-service \
    android.hardware.audio@2.0-impl \
    android.hardware.audio@2.0-service.mtk \
    android.hardware.audio@2.0-impl.mtk

# RenderScript HAL
PRODUCT_PACKAGES += \
    android.hardware.renderscript@1.0-impl

# Bluetooth
PRODUCT_PACKAGES += \
    android.hardware.bluetooth@1.0-impl \
    android.hardware.bluetooth@1.0-service

# Wifi
PRODUCT_PACKAGES += \
    android.hardware.wifi@1.0-service

#livedisplay
PRODUCT_PACKAGES += \
    vendor.lineage.livedisplay@2.0-service-mediatek
