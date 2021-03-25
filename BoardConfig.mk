#
# Copyright (C) 2020 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from xiaomi sm8250-common
-include device/xiaomi/sm8250-common/BoardConfigCommon.mk

DEVICE_PATH := device/xiaomi/apollopro

# Assert
TARGET_OTA_ASSERT_DEVICE := apollo,apollopro

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth/include

# Display
TARGET_SCREEN_DENSITY := 440

# Kernel
TARGET_KERNEL_CONFIG := vendor/apollopro_defconfig

# Properties
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop

# inherit from the proprietary version
-include vendor/xiaomi/lmi/BoardConfigVendor.mk
