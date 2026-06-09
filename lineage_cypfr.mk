#
# Copyright (C) 2024 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from cypfr device
$(call inherit-product, device/motorola/cypfr/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_cypfr
PRODUCT_DEVICE := cypfr
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := moto g52j 5G

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    DeviceProduct=cypfr_g \
    BuildDesc=$(call normalize-path-list, "cypfr_g-user 12 S3RYBS32.168-19-5-17 9d0664 release-keys") \
    BuildFingerprint="motorola/cypfr_g/cypfr:12/S3RYBS32.168-19-5-17/9d0664:user/release-keys"
