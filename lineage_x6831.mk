#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/gsi_keys.mk) 

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Infinix-X6831 device
$(call inherit-product, device/infinix/x6831/device.mk)

PRODUCT_DEVICE := Infinix-X6831
PRODUCT_NAME := lineage_x6831
PRODUCT_BRAND := Infinix
PRODUCT_MODEL := Infinix X6831
PRODUCT_MANUFACTURER := infinix

PRODUCT_GMS_CLIENTID_BASE := android-transsion

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="sys_tssi_64_armv82_infinix-user 13 TP1A.220624.014 456790 release-keys"

BUILD_FINGERPRINT := Infinix/X6831-OP/Infinix-X6831:12/SP1A.210812.016/231020V1612:user/release-keys
