# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_ancora.mk)

PRODUCT_RELEASE_NAME := ancora

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration
PRODUCT_NAME := cm_ancora
PRODUCT_DEVICE := ancora
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-T679

