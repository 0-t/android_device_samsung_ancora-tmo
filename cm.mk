# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/full_ancora_tmo.mk)

PRODUCT_RELEASE_NAME := ancora_tmo

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)
$(call inherit-product, vendor/cm/config/gsm.mk)

# Setup device configuration
PRODUCT_NAME := cm_ancora_tmo
PRODUCT_DEVICE := ancora_tmo
PRODUCT_BRAND := Samsung
PRODUCT_MANUFACTURER := Samsung
PRODUCT_MODEL := SGH-T679

