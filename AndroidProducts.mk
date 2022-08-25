#
# Copyright (C) 2021 The LineageOS Project
# Copyright (C) 2021 The Raphielscape LLC. and The helluvaOS Project
# Copyright (C) 2021 The LineageOS Modded Project
# Copyright (C) 2021 StatiXOS
#
# SPDX-License-Identifier: Apache-2.0
#

PRODUCT_MAKEFILES := \
    $(LOCAL_DIR)/aosp_osaka.mk \
    $(LOCAL_DIR)/hentai_osaka.mk \
    $(LOCAL_DIR)/lineage_osaka.mk \
    $(LOCAL_DIR)/statix_osaka.mk

COMMON_LUNCH_CHOICES := \
    aosp_osaka-eng \
    aosp_osaka-user \
    aosp_osaka-userdebug \
    hentai_osaka-eng \
    hentai_osaka-user \
    hentai_osaka-userdebug \
    lineage_osaka-eng \
    lineage_osaka-user \
    lineage_osaka-userdebug \
    statix_osaka-userdebug
