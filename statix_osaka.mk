
#
# Copyright (C) 2021 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from the device configuration.
$(call inherit-product, device/motorola/osaka/device.mk)

# Inherit some common StatiX stuff.
$(call inherit-product, vendor/statix/config/common.mk)
$(call inherit-product, vendor/statix/config/gsm.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := osaka
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g stylus 5G
PRODUCT_NAME := statix_osaka

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=redfin \
    PRIVATE_BUILD_DESC="motorola/denver_global/denver:11/RRE31.Q2-11-46/53308:user/release-keys"

BUILD_FINGERPRINT := motorola/denver_global/denver:11/RRE31.Q2-11-46/53308:user/release-keys
