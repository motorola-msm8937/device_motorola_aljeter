#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, device/motorola/jeter/device.mk)

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := lineage_jeter
PRODUCT_DEVICE := jeter
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g6 play
PRODUCT_MANUFACTURER := motorola

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.model \
    ro.product.name

# Build fingerprint
BUILD_FINGERPRINT := google/redfin/redfin:11/RQ3A.210905.001.A1/7511028:user/release-keys
BUILD_DESCRIPTION := redfin-user 11 RQ3A.210905.001.A1/7511028 release-keys

PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
    ro.build.fingerprint=$(BUILD_FINGERPRINT)

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="$(BUILD_DESCRIPTION)"

PRODUCT_GMS_CLIENTID_BASE := android-motorola

TARGET_BOOT_ANIMATION_RES := 720

TARGET_GAPPS_ARCH := arm64
