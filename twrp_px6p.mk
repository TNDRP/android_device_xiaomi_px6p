#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some twrp stuff.
$(call inherit-product, vendor/twrp/config/common_full_phone.mk)

# Inherit from px6p device
$(call inherit-product, device/xiaomi/px6p/device.mk)

PRODUCT_DEVICE := px6p
PRODUCT_NAME := twrp_px6p
PRODUCT_BRAND := Android
PRODUCT_MODEL := Poco x6 Pro
PRODUCT_MANUFACTURER := xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="missi_phone_global_only64-user 14 UP1A.230905.011 V816.0.14.0.UNLMIXM release-keys"

BUILD_FINGERPRINT := Android/missi_phone_global_only64/missi:14/UP1A.230905.011/V816.0.14.0.UNLMIXM:user/release-keys
