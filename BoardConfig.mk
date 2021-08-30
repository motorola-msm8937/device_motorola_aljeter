#
# Copyright (C) 2019 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from msm8937-common
-include device/motorola/msm8937-common/BoardConfigCommon.mk

DEVICE_PATH := device/motorola/jeter

# Assert
TARGET_OTA_ASSERT_DEVICE := jeter,aljeter

# Display
TARGET_SCREEN_DENSITY := 320

# HIDL
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest.xml

# Kernel
TARGET_KERNEL_CONFIG := jeter_defconfig

# NFC
NXP_CHIP_TYPE := pn553
ODM_MANIFEST_SKUS += n
ODM_MANIFEST_N_FILES := $(DEVICE_PATH)/odm_manifest_n.xml

# Partitions
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 25165824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 27124546560

# Properties
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Security patch level
VENDOR_SECURITY_PATCH := 2019-03-01

# SELinux
BOARD_SEPOLICY_DIRS += $(DEVICE_PATH)/sepolicy

# Inherit from the proprietary version
-include vendor/motorola/jeter/BoardConfigVendor.mk
