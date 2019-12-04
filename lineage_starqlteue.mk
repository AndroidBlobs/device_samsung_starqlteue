# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from starqlteue device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := samsung
PRODUCT_DEVICE := starqlteue
PRODUCT_MANUFACTURER := samsung
PRODUCT_NAME := lineage_starqlteue
PRODUCT_MODEL := SM-G960U1

PRODUCT_GMS_CLIENTID_BASE := android-samsung
TARGET_VENDOR := samsung
TARGET_VENDOR_PRODUCT_NAME := starqlteue
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="starqlteue-user 9 PPR1.180610.011 G960U1UEU6CSH7 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := samsung/starqlteue/starqlteue:9/PPR1.180610.011/G960U1UEU6CSH7:user/release-keys
