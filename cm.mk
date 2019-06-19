$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)
$(call inherit-product, device/amazon/karnak/device.mk)
$(call inherit-product, device/amazon/karnak/lineage_karnak.mk)

PRODUCT_CHARACTERISTICS := tablet

TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := lineage_karnak
PRODUCT_RELEASE_NAME := karnak
