#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

DEVICE_PATH := device/motorola/mumba

# Inherit from motorola sm6450-common
include device/motorola/sm6450-common/BoardConfigCommon.mk

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := $(PRODUCT_DEVICE)

# Display
TARGET_SCREEN_DENSITY := 390

# Partitions
BOARD_SUPER_PARTITION_SIZE := 8589934592
BOARD_MOT_DP_GROUP_SIZE := 8585740288

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/configs/properties/product.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/configs/properties/vendor.prop

# Security
BOOT_SECURITY_PATCH := 2026-05-01
VENDOR_SECURITY_PATCH := $(BOOT_SECURITY_PATCH)

# Verified Boot
BOARD_AVB_ROLLBACK_INDEX := 6
BOARD_AVB_VBMETA_SYSTEM_ROLLBACK_INDEX := $(BOARD_AVB_ROLLBACK_INDEX)

# Vendor
include vendor/motorola/mumba/BoardConfigVendor.mk
