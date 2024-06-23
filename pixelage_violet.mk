#
# Copyright (C) 2018-2020 The LineageOS Project
# Copyright (C) 2025 Pixelage Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from violet device
$(call inherit-product, device/xiaomi/violet/device.mk)

# Inherit some common Pixelage stuff.
$(call inherit-product, vendor/pixelage/config/common_full_phone.mk)

# Boot animation resolution.
TARGET_BOOT_ANIMATION_RES := 1080

# Extra Stuffs
TARGET_SUPPORTS_QUICK_TAP := true
TARGET_ENABLE_BLUR := false

# Pixelage
PIXELAGE_BUILDTYPE := UNOFFICIAL
PIXELAGE_MAINTAINER := RK KRATOS
TARGET_FACE_UNLOCK_SUPPORTED := true

# MiuiCamera
$(call inherit-product-if-exists, vendor/MiuiCamera/config.mk)

# Charging Animation
TARGET_INCLUDE_PIXEL_CHARGER := true

# Device identifier. This must come after all inclusions.
PRODUCT_NAME := pixelage_violet
PRODUCT_DEVICE := violet
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7 Pro
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
