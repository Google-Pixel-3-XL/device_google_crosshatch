#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit some common xdroid stuff.
$(call inherit-product, vendor/xdroid/config/common.mk)
XDROID_MAINTAINER := Julius_Ronald
TARGET_DISABLE_EPPE := true
TARGET_IS_PIXEL := true
TARGET_BOOT_ANIMATION_RES := 1440
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_SUPPORTS_GOOGLE_RECORDER := false
TARGET_INCLUDE_STOCK_ARCORE := false
TARGET_INCLUDE_LIVE_WALLPAPERS := false
TARGET_FACE_UNLOCK_SUPPORTED := true
TARGET_SUPPORTS_CALL_RECORDING := true

# Inherit device configuration
$(call inherit-product, device/google/crosshatch/aosp_crosshatch.mk)

include device/google/crosshatch/crosshatch/device-xdroid.mk

# Device identifier. This must come after all inclusions
PRODUCT_MANUFACTURER := Google
PRODUCT_NAME := xdroid_crosshatch
PRODUCT_DEVICE := crosshatch
PRODUCT_BRAND := Google
PRODUCT_MODEL := Pixel 3 XL

PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_PRODUCT=crosshatch \
    PRIVATE_BUILD_DESC="crosshatch-user 12 SP1A.210812.016.C2 8618562 release-keys"

BUILD_FINGERPRINT := google/crosshatch/crosshatch:12/SP1A.210812.016.C2/8618562:user/release-keys

$(call inherit-product, vendor/google/crosshatch/crosshatch-vendor.mk)
