#
# Copyright (C) 2023 The Android Open Source Project
# Copyright (C) 2023 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from spaced device
$(call inherit-product, device/rm6781/spaced/device.mk)

PRODUCT_DEVICE := spaced
PRODUCT_NAME := omni_spaced
PRODUCT_BRAND := RM6781
PRODUCT_MODEL := RM6781
PRODUCT_MANUFACTURER := rm6781

PRODUCT_GMS_CLIENTID_BASE := android-oppo

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_oplus_mssi_64_cn-user-11-RP1A.200720.011-mp8tc16sppr10V1-release-keys"

BUILD_FINGERPRINT := realme/RMX3151/RE54B4L1:11/RP1A.200720.011/1634223691782:user/release-keys
