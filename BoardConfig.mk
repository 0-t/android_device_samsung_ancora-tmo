# Copyright (C) 2012 The CyanogenMod Project
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
#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#
#
# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/samsung/ancora_tmo/BoardConfigVendor.mk

# Platform
TARGET_BOARD_PLATFORM := msm7x30
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_NO_INITLOGO := true
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480
USE_SET_METADATA := false

# Architecture
TARGET_ARCH := arm
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a8
TARGET_ARCH_LOWMEM := true
TARGET_BOOTLOADER_BOARD_NAME := ancora_tmo
TARGET_OTA_ASSERT_DEVICE := ancora_tmo,SGH-T679,ancora
TARGET_KERNEL_CONFIG := ancora_tmo_defconfig
BOARD_KERNEL_BASE := 0x00400000
BOARD_KERNEL_PAGESIZE := 4096
TARGET_KERNEL_SOURCE := kernel/samsung/ancora_tmo
TARGET_KERNEL_CONFIG := ancora_tmo_defconfig
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_VOLD_EMMC_SHARES_DEV_MAJOR := true
BOARD_VOLD_MAX_PARTITIONS := 28

# Wifi related defines
WIFI_BAND                        := 802_11_ABG
WPA_SUPPLICANT_VERSION           := VER_0_8_X
BOARD_WPA_SUPPLICANT_DRIVER      := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_HOSTAPD_DRIVER             := NL80211
BOARD_HOSTAPD_PRIVATE_LIB        := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE                := bcmdhd
BOARD_HAVE_SAMSUNG_WIFI          := true
WIFI_DRIVER_MODULE_PATH          := "/system/lib/modules/dhd.ko"
WIFI_DRIVER_MODULE_NAME          := "dhd"
WIFI_DRIVER_MODULE_ARG           := "firmware_path=/vendor/firmware/fw_bcmdhd.bin nvram_path=/vendor/firmware/nvram_net.txt"
WIFI_DRIVER_MODULE_AP_ARG        := "firmware_path=/vendor/firmware/fw_bcmdhd_apsta.bin nvram_path=/vendor/firmware/nvram_net.txt"
WIFI_DRIVER_FW_PATH_PARAM        := "/sys/module/dhd/parameters/firmware_path"
WIFI_DRIVER_FW_PATH_STA          := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP           := "/vendor/firmware/fw_bcmdhd_apsta.bin"

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/ancora_tmo/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := device/samsung/ancora_tmo/bluetooth/vnd_ancora_tmo.txt

# RIL
BOARD_MOBILEDATA_INTERFACE_NAME = "pdp0"
BOARD_RIL_CLASS := ../../../device/samsung/ancora_tmo/ril/
BOARD_USES_LEGACY_RIL := true
BOARD_USES_LIBSECRIL_STUB := true

# Audio
TARGET_QCOM_AUDIO_VARIANT := caf
BOARD_HAVE_SAMSUNG_AUDIO := true
BOARD_USES_QCOM_AUDIO_RESETALL := true
BOARD_USES_QCOM_AUDIO_VOIPMUTE := true
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_HAVE_PRE_KITKAT_AUDIO_BLOB := true
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QCOM_ENHANCED_AUDIO := true
# BOARD_USES_LEGACY_QCOM := true

# EGL
USE_OPENGL_RENDERER := true
BOARD_EGL_WORKAROUND_BUG_10194508 := true
BOARD_EGL_NEEDS_FNW := true
BOARD_EGL_CFG := device/samsung/ancora_tmo/config/egl.cfg
ENABLE_WEBGL := true
BOARD_ALLOW_EGL_HIBERNATION := true

# AV
TARGET_QCOM_DISPLAY_VARIANT := legacy
TARGET_QCOM_MEDIA_VARIANT := legacy
TARGET_NO_HW_VSYNC := false
TARGET_USES_ION := false
TARGET_USES_C2D_COMPOSITION := true
TARGET_FORCE_CPU_UPLOAD := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true
TARGET_PROVIDES_LIBLIGHT := true
TARGET_USES_CM_POWERHAL := true
BOARD_USE_LEGACY_TOUCHSCREEN := true

# Override healthd HAL
BOARD_HAL_STATIC_LIBRARIES := libhealthd.qcom

# Camera
BOARD_CAMERA_USE_MM_HEAP := true
BOARD_USES_LEGACY_OVERLAY := true
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
BOARD_USE_MHEAP_SCREENSHOT := true
COMMON_GLOBAL_CFLAGS += -DFORCE_SCREENSHOT_CPU_PATH
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DBINDER_COMPAT
COMMON_GLOBAL_CFLAGS += -DSAMSUNG_CAMERA_LEGACY
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB -DQCOM_NO_SECURE_PLAYBACK -DNO_UPDATE_PREVIEW
# TARGET_DISABLE_ARM_PIE := true

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true
BOARD_VENDOR_QCOM_AMSS_VERSION := 6225
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := msm7x30
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Begin recovery stuff
#
# Partition sizes must match your phone, or all hell will break loose!
# For the Galaxy W, these are calculated from /proc/partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 5767168
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 7864320
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 560988160
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1163919360
BOARD_CACHEIMAGE_PARTITION_SIZE := 62914560
BOARD_FLASH_BLOCK_SIZE := 4096

BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_SDCARD_INTERNAL := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/samsung/ancora_tmo/recovery/recovery_keys.c
TARGET_RECOVERY_INITRC := device/samsung/ancora_tmo/config/init.recovery.rc
TARGET_RECOVERY_FSTAB := device/samsung/ancora_tmo/config/fstab.qcom
# End recovery stuff

# TWRP recovery stuff
BOARD_HAS_SDCARD_INTERNAL := true
BOARD_USES_MMCUTILS := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_HAS_NO_SELECT_BUTTON := true
DEVICE_RESOLUTION := 480x800
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.196609/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255
TW_CUSTOM_POWER_BUTTON := 107
BOARD_USE_CUSTOM_RECOVERY_FONT:= \"roboto_10x18.h\"
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
TW_NO_REBOOT_BOOTLOADER := true
TW_HAS_DOWNLOAD_MODE := true
TW_USE_MODEL_HARDWARE_ID_FOR_DEVICE_ID := true
TW_INCLUDE_FB2PNG := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"

# SELinux
BOARD_KERNEL_CMDLINE := androidboot.selinux=permissive

BOARD_SEPOLICY_DIRS += \
    device/samsung/ancora_tmo/sepolicy

BOARD_SEPOLICY_UNION += \
    file_contexts \
    property_contexts \
    bridge.te \
    camera.te \
    device.te \
    dhcp.te \
    domain.te \
    drmserver.te \
    file.te \
    init.te \
    mac_update.te \
    mediaserver.te \
    rild.te \
    rmt.te \
    surfaceflinger.te \
    system.te \
    tee.te \
    ueventd.te \
    wpa_supplicant.te \
    vold.te

TARGET_USE_CUSTOM_LUN_FILE_PATH := /sys/devices/platform/msm_hsusb/gadget/lun%d/file
