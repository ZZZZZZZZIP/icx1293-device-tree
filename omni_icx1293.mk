#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from icx1293 device
$(call inherit-product, device/sony/icx1293/device.mk)

PRODUCT_DEVICE := icx1293
PRODUCT_NAME := omni_icx1293
PRODUCT_BRAND := SonyAudio
PRODUCT_MODEL := NW-A100Series
PRODUCT_MANUFACTURER := sony

PRODUCT_GMS_CLIENTID_BASE := android-sonyvs

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="icx1293_002-user 9 4.06.00 316 release-keys"

BUILD_FINGERPRINT := SonyAudio/icx1293_002/icx1293:9/4.06.00/316:user/release-keys
