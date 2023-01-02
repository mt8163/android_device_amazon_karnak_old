#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for Fire HD 8 2018
$(call inherit-product, device/amazon/karnak/lineage_karnak.mk)


PRODUCT_NAME := lineage_karnak
PRODUCT_RELEASE_NAME := karnak
