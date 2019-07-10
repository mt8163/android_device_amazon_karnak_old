
-include device/amazon/mt8163-common/BoardConfigCommon.mk



#Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_PREBUILT_KERNEL := device/amazon/karnak/prebuilt/zImage
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)prebuilt/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel





# Assert
TARGET_OTA_ASSERT_DEVICE := karnak

TARGET_BOOTLOADER_BOARD_NAME := karnak
