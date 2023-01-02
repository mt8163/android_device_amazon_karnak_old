#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_p.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)
$(call inherit-product, device/common/gps/gps_us_supl.mk)
$(call inherit-product, device/amazon/karnak/device.mk)

# Inherit go optimizations for karnak
$(call inherit-product, device/amazon/karnak/go_opt.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := karnak
PRODUCT_NAME := lineage_karnak
PRODUCT_BRAND := google
PRODUCT_MODEL := Fire
PRODUCT_BOARD := karnak
PRODUCT_MANUFACTURER := amzn

# Bootanimation
TARGET_SCREEN_WIDTH := 1280
TARGET_SCREEN_HEIGHT := 800
