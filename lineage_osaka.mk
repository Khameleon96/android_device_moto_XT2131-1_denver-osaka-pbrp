#
# Copyright (C) 2017-2020 The LineageOS Project
# Copyright (C) 2021 The LineageOS Modded Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from osaka device
$(call inherit-product, device/motorola/osaka/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# GMS
$(call inherit-product, vendor/partner_gms/products/gms.mk)
BUILD_GMS=yes

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_osaka
PRODUCT_DEVICE := osaka
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g stylus 5g
PRODUCT_MANUFACTURER := motorola
PRODUCT_SHIPPING_API_LEVEL := 30

PRODUCT_AAPT_CONFIG := xxxhdpi
PRODUCT_AAPT_PREF_CONFIG := xxxhdpi

# Boot animation
TARGET_SCREEN_HEIGHT := 2520
TARGET_SCREEN_WIDTH := 1080

# Build info
PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=osaka \
    PRIVATE_BUILD_DESC="denver_global-user 11 RRES31.Q2-11-52-4 7f8df1 release-keys"

PRODUCT_GMS_CLIENTID_BASE := android-motorola

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := google/redfin/redfin:12/SP1A.210812.015/7679548:user/release-keys

# QCOM
BOARD_USES_QCOM_HARDWARE := true
