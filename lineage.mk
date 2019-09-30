# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_tablet_wifionly.mk)

# Inherit device configuration for Fire HD 8 2018
$(call inherit-product, device/amazon/karnak/lineage_karnak.mk)


PRODUCT_NAME := lineage_karnak
PRODUCT_RELEASE_NAME := karnak
