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

DEVICE_PATH := device/amazon/karnak

# Headers
TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

# Inherit from the proprietary version
include vendor/amazon/mt8163/BoardConfigVendor.mk
include vendor/amazon/karnak/BoardConfigVendor.mk

# Bootanimation
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800

# Platform
TARGET_BOARD_PLATFORM := mt8163
TARGET_BOARD_PLATFORM_GPU := mali-720mp2

# Bootloader
TARGET_NO_BOOTLOADER := true

# Architecture
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true

# Kernel Config
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_OFFSET := 0x00000000
BOARD_KERNEL_TAGS_OFFSET := 0x07f80000
BOARD_RAMDISK_OFFSET := 0x03400000
BOARD_SECOND_OFFSET := 0x00e80000

BOARD_MKBOOTIMG_ARGS := \
    --kernel_offset $(BOARD_KERNEL_OFFSET) \
    --ramdisk_offset $(BOARD_RAMDISK_OFFSET) \
    --second_offset $(BOARD_SECOND_OFFSET)   \
    --tags_offset $(BOARD_KERNEL_TAGS_OFFSET)

TARGET_KERNEL_ARCH := arm64
TARGET_KERNEL_SOURCE := kernel/amazon/karnak
TARGET_KERNEL_CONFIG := lineageos_karnak_defconfig
TARGET_KERNEL_VARIANT_CONFIG :=lineageos_karnak_defconfig
TARGET_KERNEL_CROSS_COMPILE_PREFIX := $(shell pwd)/prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android-

BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_CMDLINE += loop.max_part=7

# ROOT FOLDERS
BOARD_ROOT_EXTRA_FOLDERS := persist

BOARD_HAS_MTK_HARDWARE := true

# Build Vendor Image
TARGET_COPY_OUT_VENDOR := vendor
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4

# Binder API version
TARGET_USES_64_BIT_BINDER := true

BOARD_NO_SECURE_DISCARD := true

# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true

# WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := "/dev/wmtWifi"
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

# BT
BOARD_HAS_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_MTK := true
BOARD_BLUETOOTH_DOES_NOT_USE_RFKILL := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3253731328
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_VENDORIMAGE_PARTITION_SIZE := 235929600
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11633933824
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_USERIMAGES_USE_EXT4 := true

BLOCK_BASED_OTA := true

# Seccomp filters
BOARD_SECCOMP_POLICY := $(DEVICE_PATH)/seccomp-policy
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy/public
BOARD_PLAT_PRIVATE_SEPOLICY_DIR += $(DEVICE_PATH)/sepolicy/private

# Vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file

# Libshims
TARGET_LD_SHIM_LIBS := \
  /system/lib/libasp.so|libshim_lab126_log.so \
  /vendor/lib/egl/libGLES_mali.so|libshim_egl.so \
  /vendor/lib64/egl/libGLES_mali.so|libshim_egl.so \
  /vendor/lib/libcam_utils.so|libshim_camera.so\
  /vendor/lib/hw/amzn_drmprov.mt8163.so|libshim_lab126_log.so \
  /vendor/lib/libcam.utils.sensorlistener.so|libshim_sensor.so \
  /vendor/bin/amzn_drmprov_check|libshim_dha.so \
  /vendor/lib/hw/amzn_dha.mt8163.so|libshim_dha.so \
  /vendor/lib/hw/gralloc.mt8163.so|libshim_graphic_buffer.so \
  /vendor/lib64/hw/gralloc.mt8163.so|libshim_graphic_buffer.so \
  /vendor/lib/hw/hwcomposer.mt8163.so|libshim_hwcomposer.so \
  /vendor/lib64/hw/hwcomposer.mt8163.so|libshim_hwcomposer.so \
  /vendor/lib/libcam_utils.so|libshim_graphic_buffer.so \
  /vendor/lib/libaudiocomponentengine.so|libshim_audiocomponent.so \
  /vendor/lib64/libaudiocomponentengine.so|libshim_audiocomponent.so \
  /vendor/lib/libcam.client.so|libshim_graphic_buffer.so \
  /vendor/lib/libMtkOmxVdecEx.so|libshim_graphic_buffer.so

# Software Gatekeeper
BOARD_USE_SOFT_GATEKEEPER := true

# Charger
BACKLIGHT_PATH := /sys/class/leds/lcd-backlight/brightness
BOARD_CHARGING_MODE_BOOTING_LPM := /sys/class/BOOT/BOOT/boot/boot_mode

# Manifest
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/compatibility_matrix.xml

# OTA assert
TARGET_OTA_ASSERT_DEVICE:= karnak

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

# Fix video autoscaling on old OMX decoders
TARGET_OMX_LEGACY_RESCALING:= true

# Display
TARGET_SCREEN_DENSITY := 213

# Webkit
ENABLE_WEBGL := true
TARGET_FORCE_CPU_UPLOAD := true

# Audio
USE_XML_AUDIO_POLICY_CONF := 1

# Exclude AudioFx
TARGET_EXCLUDES_AUDIOFX := true

# Camera
TARGET_CAMERASERVICE_CLOSES_NATIVE_HANDLES := true
TARGET_USES_NON_TREBLE_CAMERA := true
USE_CAMERA_STUB := true
TARGET_SPECIFIC_CAMERA_PARAMETER_LIBRARY := libcamera_parameters_mtk

#BACKLIGHTS
TARGET_PROVIDES_LIBLIGHT := true

# System Prop
BOARD_PROPERTY_OVERRIDES_SPLIT_ENABLED := true

# LMKD stats logging
TARGET_LMKD_STATS_LOG := true

#SENSORS
TARGET_NO_SENSOR_PERMISSION_CHECK := true

# Vendor Security Patch
VENDOR_SECURITY_PATCH := 2019-09-01

# TWRP
ifneq (,$(strip $(wildcard bootable/recovery-twrp/twrp.cpp)))
RECOVERY_VARIANT := twrp
WITH_TWRP := true
endif
TARGET_RECOVERY_DEVICE_DIRS += device/amazon/karnak/twrp
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/recovery.fstab
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone2/temp
DEVICE_RESOLUTION := 800x1280
TW_DEFAULT_EXTERNAL_STORAGE := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_USE_SYSTEM_VOLD := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
TW_DEFAULT_BRIGHTNESS := 128
TW_AMONET := true
TW_DEFAULT_BACKUP_LIST := "/system_image;/vendor_image;/data;/boot;"

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

BUILD_BROKEN_DUP_RULES := true

# Disable API check
WITHOUT_CHECK_API := true
