#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2021 The Raphielscape LLC. and The helluvaOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# All components inherited here go to system_ext image
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_system_ext.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_system_ext.mk)

# All components inherited here go to product image
$(call inherit-product, vendor/hentai/build/product/hentai_product.mk)

# All components inherited here go to vendor image
# TODO(b/136525499): move *_vendor.mk into the vendor makefile later
$(call inherit-product, $(SRC_TARGET_DIR)/product/handheld_vendor.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/telephony_vendor.mk)

# Inherit from the device configuration.
$(call inherit-product, device/motorola/osaka/device.mk)

PRODUCT_BRAND := motorola
PRODUCT_DEVICE := osaka
PRODUCT_MANUFACTURER := motorola
PRODUCT_MODEL := moto g stylus 5G
PRODUCT_NAME := hentai_osaka

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=redfin \
    PRIVATE_BUILD_DESC="motorola/denver_global/denver:11/RRE31.Q2-11-46/53308:user/release-keys"

BUILD_FINGERPRINT := motorola/denver_global/denver:11/RRE31.Q2-11-46/53308:user/release-keys
