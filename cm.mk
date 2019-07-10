# Inherit device configuration for mt8163-common
$(call inherit-product, device/amazon/mt8163-common/cm.mk)

# Inherit device configuration
$(call inherit-product, device/amazon/karnak/lineage_karnak.mk)

PRODUCT_CHARACTERISTICS := tablet

TARGET_SCREEN_WIDTH := 800
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := lineage_karnak
PRODUCT_RELEASE_NAME := karnak
