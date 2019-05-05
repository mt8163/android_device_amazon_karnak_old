BOARD_VENDOR := amazon
LOCAL_PATH := device/amazon/karnak
DEVICE_PATH := device/amazon/karnak
MTK_PROJECT_CONFIG ?= $(DEVICE_PATH)/ProjectConfig.mk
include $(MTK_PROJECT_CONFIG)
# MTK audio
BOARD_USES_MTK_AUDIO := true
BOARD_HAS_MTK_HARDWARE := true
USE_XML_AUDIO_POLICY_CONF := 1
#board
MTK_HARDWARE := true
MTK_APPENDED_DTB_SUPPORT := yes
# Bootanimation
TARGET_BOOTANIMATION_MULTITHREAD_DECODE := true
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1200
# Camera
USE_CAMERA_STUB := true

# OTA assert
TARGET_OTA_ASSERT_DEVICE:= karnak
BOARD_USES_LEGACY_MTK_AV_BLOB := true
AB_OTA_UPDATER := false
# Bionic

# Enable Minikin text layout engine (will be the default soon)
USE_MINIKIN := true

#Use dlmalloc instead of jemalloc for mallocs
MALLOC_SVELTE := true

#=================================================================================================
# Display
TARGET_PROVIDES_LIBLIGHT := true
BOARD_EGL_CFG := $(DEVICE_PATH)/egl.cfg
USE_OPENGL_RENDERER := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_OVERLAY := true
PRESENT_TIME_OFFSET_FROM_VSYNC_NS := 0
MAX_VIRTUAL_DISPLAY_DIMENSION := 1
TARGET_DISPLAY_USE_RETIRE_FENCE := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 1024*1024
MTK_HWC_SUPPORT := yes
MTK_HWC_VERSION := 1.4.1
TARGET_BOARD_PLATFORM_GPU := mali-t720 mp2
#=================================================================================================
#=================================================================================================
# Partitions informations
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_CACHEIMAGE_PARTITION_SIZE := 524288000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 20971520
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 3253731328
BOARD_USERDATAIMAGE_PARTITION_SIZE := 11633933824
#=================================================================================================
TARGET_BOARD_PLATFORM := mt8163
# Partitions types
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false
TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun%d/file
#================================= Recovery========================================================
TARGET_RECOVERY_FSTAB := $(DEVICE_PATH)/rootdir/etc/recovery.fstab
BOARD_HAS_NO_SELECT_BUTTON := true
#=================================================================================================

TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := false
TW_CUSTOM_CPU_TEMP_PATH := /sys/devices/virtual/thermal/thermal_zone2/temp
DEVICE_RESOLUTION := 800x1280

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# MTK Hardware
BOARD_USES_MTK_HARDWARE := true
BOARD_USES_LEGACY_MTK_AV_BLOB := true
#ARCH
TARGET_ARCH := arm
TARGET_CPU_VARIANT := cortex-a7
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_ARCH_VARIANT_CPU := cortex-a7
TARGET_CPU_VARIANT:= cortex-a7
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
#=====================================

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/mt_usb/musb-hdrc.0.auto/gadget/lun0/file
#filesystem

include vendor/amazon/karnak/karnak-vendor.mk

# extras
WITHOUT_CHECK_API := true
ALLOW_MISSING_DEPENDENCIES := true
COMMON_GLOBAL_CFLAGS += $(MTK_INTERNAL_CDEFS)
COMMON_GLOBAL_CPPFLAGS += $(MTK_INTERNAL_CDEFS)


BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00000000 --ramdisk_offset 0x03400000 --second_offset 0x00e80000 --tags_offset 0x07f80000
#KERNEL
BOARD_KERNEL_CMDLINE := bootopt=64S3,32N2,64N2
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x40080000
BOARD_KERNEL_OFFSET := 0
BOARD_KERNEL_PAGESIZE := 2048
TARGET_PREBUILT_KERNEL := device/amazon/karnak/prebuilt/zImage
BOARD_FLASH_BLOCK_SIZE := 131072
#KERNEL MODULES
PRODUCT_COPY_FILES += \
	$(LOCAL_PATH)/modules/br_netfilter.ko:system/lib/modules/lib/modules/br_netfilter.ko \
	$(LOCAL_PATH)/modules/xt_physdev.ko:system/lib/modules/lib/modules/xt_physdev.ko \
#BUILD.PROP
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop

TARGET_NO_SENSOR_PERMISSION_CHECK := true

PRODUCT_PACKAGES += \
	wifi2agps \
	wmt_loader


PRODUCT_PACKAGES += \
    libwpa_client \
    hostapd \
    dhcpcd.conf \
    wpa_supplicant \
    wpa_supplicant.conf

BOARD_SEPOLICY_DIRS += 
 $(LOCAL_PATH)/sepolicy

#PREBUILT KERNEL
ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := $(LOCAL_PATH)prebuilt/zImage
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_COPY_FILES += \
	$(LOCAL_KERNEL):kernel

BLOCK_BASED_OTA := false



#WIFI
BOARD_WLAN_DEVICE := MediaTek
WPA_SUPPLICANT_VERSION := VER_0_8_X
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_mt66xx
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_mt66xx
WIFI_DRIVER_FW_PATH_PARAM := /dev/wmtWifi
WIFI_DRIVER_FW_PATH_STA:=STA
WIFI_DRIVER_FW_PATH_AP:=AP
WIFI_DRIVER_FW_PATH_P2P:=P2P
WIFI_DRIVER_STATE_CTRL_PARAM := /dev/wmtWifi
WIFI_DRIVER_STATE_ON := 1
WIFI_DRIVER_STATE_OFF := 0

