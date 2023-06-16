#
# Copyright (C) 2018-2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/google/crosshatch/crosshatch/overlay-derp

PRODUCT_ENFORCE_RRO_EXCLUDED_OVERLAYS += \
    device/google/crosshatch/crosshatch/overlay-derp/frameworks/base/packages/overlays/NoCutoutOverlay

$(call inherit-product, device/google/crosshatch/device-derp.mk)
