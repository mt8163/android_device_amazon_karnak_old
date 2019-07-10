$(call inherit-product, device/amazon/karnak/device.mk)



# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base.mk)

PRODUCT_DEVICE := karnak
PRODUCT_NAME := lineage_karnak
PRODUCT_BRAND := google
PRODUCT_MODEL := Fire
PRODUCT_BOARD := karnak
PRODUCT_MANUFACTURER := amzn

  
