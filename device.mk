$(call inherit-product, build/target/product/full_base_telephony.mk)


PRODUCT_BUILD_PROP_OVERRIDES += BUILD_UTC_DATE=0
TARGET_SCREEN_HEIGHT := 1920
TARGET_SCREEN_WIDTH := 1080

PRODUCT_CHARACTERISTICS := tablet
