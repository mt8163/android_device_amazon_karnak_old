
-include device/amazon/mt8163-common/BoardConfigCommon.mk

# Vendor
BOARD_VENDORIMAGE_PARTITION_SIZE := 235929600
TARGET_COPY_OUT_VENDOR := vendor

#Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/amazon/karnak
TARGET_KERNEL_CONFIG := lineageos_karnak_defconfig
TARGET_KERNEL_VARIANT_CONFIG :=lineageos_karnak_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX :=  /build/android/nougat/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

# Assert
TARGET_OTA_ASSERT_DEVICE := karnak

TARGET_BOOTLOADER_BOARD_NAME := karnak
