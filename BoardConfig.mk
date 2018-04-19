#
# Copyright (C) 2016 The CyanogenMod Project
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

BOARD_VENDOR := yu

LOCAL_PATH := device/yu/yureka2

TARGET_SPECIFIC_HEADER_PATH := $(LOCAL_PATH)/include

# Deodex
DISABLE_DEXPREOPT := true

# Block based ota
BLOCK_BASED_OTA := false

# Architecture
TARGET_ARCH := arm64
TARGET_ARCH_VARIANT := armv8-a
TARGET_CPU_ABI := arm64-v8a
TARGET_CPU_ABI2 :=
TARGET_CPU_VARIANT := cortex-a53

TARGET_2ND_ARCH := arm
TARGET_2ND_ARCH_VARIANT := armv7-a-neon
TARGET_2ND_CPU_ABI := armeabi-v7a
TARGET_2ND_CPU_ABI2 := armeabi
TARGET_2ND_CPU_VARIANT := cortex-a53

TARGET_CPU_CORTEX_A53 := true

TARGET_BOARD_PLATFORM := msm8953
TARGET_BOARD_PLATFORM_GPU := qcom-adreno506

TARGET_BOARD_SUFFIX := _64
TARGET_USES_64_BIT_BINDER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8953
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom msm_rtb.filter=0x237 ehci-hcd.park=3 lpm_levels.sleep_disabled=1 androidboot.bootdevice=7824900.sdhci earlycon=msm_hsl_uart,0x78af000 no_console_suspend=1
BOARD_KERNEL_CMDLINE += androidboot.selinux=permissive
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_TAGS_OFFSET := 0x00000100
BOARD_RAMDISK_OFFSET := 0x01000000
BOARD_KERNEL_IMAGE_NAME := Image.gz-dtb
TARGET_KERNEL_SOURCE := kernel/yu/msm8953
TARGET_KERNEL_CONFIG := lineageos_yureka2_defconfig

USE_CLANG_PLATFORM_BUILD := true

# ANT+
BOARD_ANT_WIRELESS_DEVICE := "vfs-prerelease"

# Audio
# for TFA98XX {
BOARD_USES_LEGACY_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_TFA98XX := true
TFA98XX_CTL_NAME := "QUIN_MI2S_RX Audio Mixer MultiMedia1"
TFA98XX_LIB_NAME := "libtfa9895.so"
TFA98XX_FUNC_CALIBRATION := "exTfa98xx_calibration"
TFA98XX_FUNC_SPEAKERON := "exTfa98xx_speakeron"
TFA98XX_FUNC_SPEAKEROFF := "exTfa98xx_speakeroff"
# for TFA98XX }
BOARD_USES_ALSA_AUDIO := true
USE_CUSTOM_AUDIO_POLICY := 1
USE_XML_AUDIO_POLICY_CONF := 1
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := true
AUDIO_FEATURE_ENABLED_EXTN_FORMATS := true
AUDIO_FEATURE_ENABLED_FM_POWER_OPT := true
AUDIO_FEATURE_ENABLED_FLUENCE := true
AUDIO_FEATURE_ENABLED_HFP := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD := true
AUDIO_FEATURE_ENABLED_PCM_OFFLOAD_24 := true
AUDIO_FEATURE_ENABLED_FLAC_OFFLOAD := true
TARGET_USES_QCOM_MM_AUDIO := true

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(LOCAL_PATH)/bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
#BLUETOOTH_HCI_USE_MCT := true
QCOM_BT_READ_ADDR_FROM_PROP := true

# Camera
# Force camera module to be compiled only in 32-bit mode on 64-bit systems
# Once camera module can run in the native mode of the system (either
# 32-bit or 64-bit), the following line should be deleted
BOARD_QTI_CAMERA_32BIT_ONLY := true
TARGET_TS_MAKEUP := true
#TARGET_HAS_LEGACY_CAMERA_HAL1 := true
USE_DEVICE_SPECIFIC_CAMERA := true
# for kernel headers
BOARD_GLOBAL_CFLAGS += -DCONFIG_MACH_CMDC_YUREKA2

# Charger
BOARD_CHARGER_ENABLE_SUSPEND := true
BOARD_CHARGER_DISABLE_INIT_BLANK := true
BOARD_GLOBAL_CFLAGS += -DBATTERY_REAL_INFO

# CMHW
BOARD_USES_CYANOGEN_HARDWARE := true
BOARD_HARDWARE_CLASS += \
    hardware/cyanogen/cmhw \
    $(LOCAL_PATH)/cmhw

# CNE / DPM
BOARD_USES_QCNE := true

# Cpusets
ENABLE_CPUSETS := true

# Crypto
TARGET_HW_DISK_ENCRYPTION := true

# Display
BOARD_EGL_CFG := $(LOCAL_PATH)/configs/egl.cfg
BOARD_USES_ADRENO := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
OVERRIDE_RS_DRIVER := libRSDriver_adreno.so
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024
TARGET_CONTINUOUS_SPLASH_ENABLED := true

# Filesystem
BOARD_CACHEIMAGE_FILE_SYSTEM_TYPE := ext4
TARGET_USERIMAGES_USE_EXT4 := true
TARGET_USERIMAGES_USE_F2FS := true
TARGET_ANDROID_FILESYSTEM_CONFIG_H := $(LOCAL_PATH)/android_filesystem_config.h

# FM
BOARD_HAVE_QCOM_FM := true
TARGET_QCOM_NO_FM_FIRMWARE := true

# GPS
USE_DEVICE_SPECIFIC_GPS := true
TARGET_NO_RPC := true

# Init
TARGET_INIT_VENDOR_LIB := libinit_yureka2
TARGET_PLATFORM_DEVICE_BASE := /devices/soc/
TARGET_RECOVERY_DEVICE_MODULES := libinit_yureka2

# Keymaster
TARGET_PROVIDES_KEYMASTER := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# NFC
BOARD_NFC_CHIPSET := pn548
BOARD_NFC_DEVICE := "/dev/pn547"
TARGET_USES_NQ_NFC := true
# Media
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_ENABLE_QC_AV_ENHANCEMENTS := true

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 67108864         # 65536 * 1204
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 67108864     # 65536 * 1024
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 2684354560
BOARD_USERDATAIMAGE_PARTITION_SIZE := 26838801408
BOARD_CACHEIMAGE_PARTITION_SIZE := 268435456       # 262144 * 1024
BOARD_PERSISTIMAGE_PARTITION_SIZE := 33554432      # 32768 * 1024
BOARD_FLASH_BLOCK_SIZE := 131072                   # 2048 * 64

# Peripheral manager
TARGET_PER_MGR_ENABLED := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# QCOM
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_QC_TIME_SERVICES := true
TARGET_USE_SDCLANG := true

# Recovery
BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_RECOVERY_FSTAB := $((LOCAL_PATH)/rootdir/fstab.qcom
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# RIL
BOARD_RIL_CLASS := ../../../$(LOCAL_PATH)/ril
TARGET_RIL_VARIANT := caf

# Recovery
TARGET_RECOVERY_FSTAB := $(LOCAL_PATH)/rootdir/fstab.qcom

# Sensor
USE_SENSOR_MULTI_HAL := true

# Tap2Wake
TARGET_TAP_TO_WAKE_NODE := "/proc/gesture/onoff"

# SELinux
include device/qcom/sepolicy/sepolicy.mk
BOARD_SEPOLICY_DIRS += $(LOCAL_PATH)/sepolicy

# Wi-Fi
BOARD_HAS_QCOM_WLAN := true
BOARD_HAS_QCOM_WLAN_SDK := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_qcwcn
BOARD_WLAN_DEVICE := qcwcn
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_qcwcn
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X



# Inherit from the proprietary version
-include vendor/yu/yureka2/BoardConfigVendor.mk
