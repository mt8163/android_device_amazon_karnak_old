#CONTRIBUTORS
#Kaijones23
#R0rtiz2
#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-19 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#



BOARD_VENDOR := amazon
KERNEL_COMMON := kernel/amazon/mt8163/common
LOCAL_PATH := device/amazon/karnak
DEVICE_PATH := device/amazon/karnak
MTK_PROJECT_CONFIG ?= $(DEVICE_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)
#LIBSHIMCONFIG := $(DEVICE_PATH)/mtk/libshims.mk
TARGET_BOOTLOADER_BOARD_NAME := mt8163


TARGET_SPECIFIC_HEADER_PATH := $(DEVICE_PATH)/include

TARGET_CPU_SMP := true

#Arch
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_USES_64_BIT_BINDER := true










DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay





# Partitions informations
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3253731328
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11633933824
BOARD_VENDORIMAGE_PARTITION_SIZE := 235929600
TARGET_COPY_OUT_VENDOR := vendor
BOARD_USES_VENDORIMAGE := true
BOARD_VENDORIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false




# Kernel
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_OFFSET := 0
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03400000 --second_offset 0x00e80000 --tags_offset 0x07f80000


TARGET_PREBUILT_KERNEL := device/amazon/karnak/prebuilt/Image.gz-dtb
PRODUCT_COPY_FILES += \
	$(TARGET_PREBUILT_KERNEL):kernel

#wifi
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

# MTK Common stuff
TARGET_BOARD_PLATFORM := mt8163
BOARD_USES_MTK_AUDIO := true
BOARD_HAS_MTK_HARDWARE := true
USE_XML_AUDIO_POLICY_CONF := 1
MTK_HARDWARE := true
MTK_APPENDED_DTB_SUPPORT := yes
BOARD_USES_LEGACY_MTK_AV_BLOB := true



# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1200

# Camera
USE_CAMERA_STUB := true


#bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth
BOARD_HAS_BLUETOOTH := true

# Display
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
TARGET_USES_HWC2 := true
TARGET_USES_HWC2ON1ADAPTER := false
TARGET_FORCE_HWC_FOR_VIRTUAL_DISPLAYS := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := false
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024




BOARD_USE_SOFT_GATEKEEPER := true




# Flags
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/configs/manifest.xml
DEVICE_MATRIX_FILE   := $(DEVICE_PATH)/configs/compatibility_matrix.xml


# OTA assert
TARGET_OTA_ASSERT_DEVICE:= karnak
AB_OTA_UPDATER := false



# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true


#TWRP COMMON
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone2/temp
DEVICE_RESOLUTION := 800x1280


#vold
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file


#include vendor stuff
include vendor/amazon/karnak/karnak-vendor.mk

#BACKLIGHTS
TARGET_PROVIDES_LIBLIGHT := true

#system Prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

#SENSORS
TARGET_NO_SENSOR_PERMISSION_CHECK := true


# extras
WITHOUT_CHECK_API := true
#ALLOW_MISSING_DEPENDENCIES := true


TARGET_LD_SHIM_LIBS := \
/system/lib/libasp.so|libshim_asp.so \
/vendor/lib/egl/libGLES_mali.so|libshim_egl.so \
/vendor/lib/libgui_ext.so|libshim_ui.so \







