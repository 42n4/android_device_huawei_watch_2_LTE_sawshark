#
# Copyright 2013 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

TARGET_BOARD_PLATFORM := bcm_java
TARGET_BOOTLOADER_BOARD_NAME := sawshark

TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_VARIANT := cortex-a7
ARCH_ARM_HAVE_TLS_REGISTER := true

BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048

BOARD_KERNEL_CMDLINE := androidboot.hardware=sawshark androidboot.console=ttyHSL0 console=ttyHSL0,115200,n8 androidboot.selinux=permissive msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 earlyprintk

TARGET_GLOBAL_CFLAGS += -mfpu=neon -mfloat-abi=softfp
TARGET_GLOBAL_CPPFLAGS += -mfpu=neon -mfloat-abi=softfp

TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 33554432
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 33554432
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 671088640
BOARD_USERDATAIMAGE_PARTITION_SIZE := 2701114368
BOARD_FLASH_BLOCK_SIZE := 131072

TARGET_RECOVERY_FSTAB = device/huawei/sawshark/fstab.sawshark

# what is this?
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
USE_CAMERA_STUB := true
