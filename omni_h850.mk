# Release name
PRODUCT_RELEASE_NAME := h850

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/aosp_base_telephony.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PACKAGES += \
    charger_res_images \
    charger

# Time Zone data for Recovery
PRODUCT_COPY_FILES += \
    bionic/libc/zoneinfo/tzdata:recovery/root/system/usr/share/zoneinfo/tzdata

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := h850
PRODUCT_MODEL := LG-H850
PRODUCT_NAME := omni_h850
PRODUCT_BRAND := lge
PRODUCT_MANUFACTURER := LGE
