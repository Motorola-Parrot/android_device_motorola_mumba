#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit_only.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from mumba device
$(call inherit-product, device/motorola/mumba/device.mk)

# Inherit some common PixelOS stuff.
$(call inherit-product, vendor/custom/config/common_full_phone.mk)

PRODUCT_NAME := custom_mumba
PRODUCT_DEVICE := mumba
PRODUCT_MANUFACTURER := motorola
PRODUCT_BRAND := motorola
PRODUCT_MODEL := motorola moto g57 power

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="mumba_g-user 16 W1WAAS36.48-12-23-5 88187-83dd13 release-keys" \
    BuildFingerprint=motorola/mumba_g/mumba:16/W1WAAS36.48-12-23-5/88187-83dd13:user/release-keys \
    DeviceName=mumba \
    DeviceProduct=mumba_g \
    SystemDevice=mumba \
    SystemName=mumba_g

PRODUCT_GMS_CLIENTID_BASE := android-motorola
