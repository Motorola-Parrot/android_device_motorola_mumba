#
# SPDX-FileCopyrightText: The LineageOS Project
# SPDX-License-Identifier: Apache-2.0
#

# AAPT
PRODUCT_AAPT_CONFIG := normal
PRODUCT_AAPT_PREF_CONFIG := xxhdpi

# API Level
BOARD_SHIPPING_API_LEVEL := 202404
PRODUCT_SHIPPING_API_LEVEL := 36

# Boot animation
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Display
TARGET_SCREEN_DENSITY := 390

# Init
PRODUCT_PACKAGES += \
    init.mmi.overlay.rc \
    init.vendor.st21nfc.rc \
    init.oem.fingerprint2.sh

# Keylayout
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/keylayout/double-tap.kl:$(TARGET_COPY_OUT_VENDOR)/usr/keylayout/double-tap.kl

# Overlays
PRODUCT_PACKAGES += \
    FrameworksResDevice \
    SettingsResDevice \
    SystemUIResDevice

# NFC
TARGET_USES_ST_NFC := true

# Perf
TARGET_PERF_VARIANT := parrotlite

# Power HAL
$(call soong_config_set,qtipower,tap_to_wake_node,/sys/class/touchscreen/primary/gesture)

# Soong namespaces
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)

# VINTF
ODM_MANIFEST_SKUS += b d dn dne n ne
ODM_MANIFEST_B_FILES := \
    $(LOCAL_PATH)/configs/vintf/sku/manifest_b.xml \
    device/motorola/sm6450-common/configs/vintf/manifest_parrot_ss.xml
ODM_MANIFEST_D_FILES := $(LOCAL_PATH)/configs/vintf/sku/manifest_d.xml
ODM_MANIFEST_DN_FILES := $(LOCAL_PATH)/configs/vintf/sku/manifest_dn.xml
ODM_MANIFEST_DNE_FILES := $(LOCAL_PATH)/configs/vintf/sku/manifest_dne.xml
ODM_MANIFEST_N_FILES := \
    $(LOCAL_PATH)/configs/vintf/sku/manifest_n.xml \
    device/motorola/sm6450-common/configs/vintf/manifest_parrot_ss.xml
ODM_MANIFEST_NE_FILES := \
    $(LOCAL_PATH)/configs/vintf/sku/manifest_ne.xml \
    device/motorola/sm6450-common/configs/vintf/manifest_parrot_ss.xml

# Inherit from motorola sm6450-common
$(call inherit-product, device/motorola/sm6450-common/common.mk)

# Vendor
$(call inherit-product, vendor/motorola/mumba/mumba-vendor.mk)

# Wi-Fi
TARGET_WIFI_VARIANTS := adrastea
