
# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/transform/full_transform.mk)

# Inherit CDMA definitions
$(call inherit-product, vendor/cm/config/cdma.mk)

## Device identifier. This must come after all inclusions
PRODUCT_NAME := cm_transform
PRODUCT_BRAND := samsung
PRODUCT_DEVICE := transform
PRODUCT_MODEL := SPH-M920
PRODUCT_MANUFACTURER := samsung

# Release name and versioning
PRODUCT_RELEASE_NAME := Transform
PRODUCT_VERSION_DEVICE_SPECIFIC :=Samsung_transform_CM9_alpha1

-include vendor/cm/products/common_versions.mk

PRODUCT_COPY_FILES +=  \
    vendor/cm/prebuilt/common/bootanimation.zip:system/media/bootanimation.zip
