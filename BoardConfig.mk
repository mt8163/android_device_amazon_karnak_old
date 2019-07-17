
-include device/amazon/mt8163-common/BoardConfigCommon.mk





#Arch


TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_VARIANT := generic

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a7

TARGET_KERNEL_SOURCE := kernel/amazon/karnak
TARGET_KERNEL_CONFIG := karnak_defconfig
TARGET_KERNEL_VARIANT_CONFIG := karnak_defconfig


# Vendor
BOARD_VENDORIMAGE_PARTITION_SIZE := 235929600
TARGET_COPY_OUT_VENDOR := vendor





#Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb






# Assert
TARGET_OTA_ASSERT_DEVICE := karnak

TARGET_BOOTLOADER_BOARD_NAME := karnak
