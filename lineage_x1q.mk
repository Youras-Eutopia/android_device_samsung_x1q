#
# SPDX-FileCopyrightText: 2024-2025 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from x1q device
$(call inherit-product, device/samsung/x1q/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_x1q
PRODUCT_DEVICE := x1q
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-G981N
PRODUCT_MANUFACTURER := samsung

PRODUCT_GMS_CLIENTID_BASE := android-samsung

# Use the latest approved GMS identifiers
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="x1qksx-user 11 RP1A.200720.012 G981NKSS4IXE4 release-keys" \
    BuildFingerprint=samsung/x1qksx/x1q:11/RP1A.200720.012/G981NKSS4IXE4:user/release-keys \
    DeviceProduct=x1qksx \
    SystemName=x1qksx
