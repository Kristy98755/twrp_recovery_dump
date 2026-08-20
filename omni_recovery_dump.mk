#
# Copyright (C) 2026 The Android Open Source Project
#
# SPDX-License-Identifier: Apache-2.0
#
# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)

# Inherit from recovery_dump device
$(call inherit-product, device/generic/recovery_dump/device.mk)

PRODUCT_DEVICE := recovery_dump
PRODUCT_NAME := omni_recovery_dump
PRODUCT_BRAND := generic
PRODUCT_MODEL := TPS900
PRODUCT_MANUFACTURER := generic

PRODUCT_GMS_CLIENTID_BASE := android-generic

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC=""

BUILD_FINGERPRINT := 

