#
# Copyright (C) 2011 The Android Open Source Project
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

# These is the hardware-specific overlay, which points to the location
# of hardware-specific resource overrides, typically the frameworks and
# application settings that are stored in resourced.

DEVICE_PACKAGE_OVERLAYS := device/samsung/transform/overlay

# These are the hardware-specific configuration files
PRODUCT_COPY_FILES += \
	device/common/gps/gps.conf_US_SUPL:system/etc/gps.conf 

# Init files
PRODUCT_COPY_FILES += \
	device/samsung/transform/init.transform.usb.rc:root/init.transform.usb.rc \
	device/samsung/transform/ueventd.transform.rc:root/ueventd.transform.rc

# Prebuilt kl keymaps
PRODUCT_COPY_FILES += \
  	device/samsung/transform/prebuilt/keys/melfas_ts_input.kl:system/usr/keylayout/melfas_ts_input.kl \
	device/samsung/transform/prebuilt/keys/s3c-keypad-rev0050.kl:system/usr/keylayout/s3c-keypad-rev0050.kl \
	device/samsung/transform/prebuilt/keys/sec_headset.kl:system/usr/keylayout/sec_headset.kl \
	device/samsung/transform/prebuilt/keys/AVRCP.kl:system/usr/keylayout/AVRCP.kl \
	device/samsung/transform/prebuilt/keys/qwerty.kl:system/usr/keylayout/qwerty.kl 

# Generated kcm keymaps
PRODUCT_COPY_FILES += \
	device/samsung/transform/prebuilt/keys/s3c-keypad-rev0050.kcm.bin:system/usr/keychars/s3c-keypad-rev0050.kcm.bin \
	device/samsung/transform/prebuilt/keys/optjoy_device.kcm.bin:system/usr/keychars/optjoy_device.kcm.bin \
	device/samsung/transform/prebuilt/keys/melfas_ts_input.kcm.bin:system/usr/keychars/melfas_ts_input.kcm.bin \
	device/samsung/transform/prebuilt/keys/qwerty.kcm.bin:system/usr/keychars/qwerty.kcm.bin 
	

# Libs
PRODUCT_PACKAGES += \
	audio.primary.SPH-M920 \
	audio_policy.SPH-M920 \
	BCM4329B1_002.002.023.0417.0448.hcd \
	bdaddr_read \
	libsecgps.so \
	libsec-ril40.so \
	gralloc.transform \
	sensors.transform \
	lights.transform \
	hwcomposer.default \
	libGLES_fimg \
	pppd_runner
	

# These are the hardware-specific features
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/base/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/base/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/base/data/etc/android.hardware.telephony.cdma.xml:system/etc/permissions/android.hardware.telephony.cdma.xml \
    frameworks/base/data/etc/android.hardware.location.xml:system/etc/permissions/android.hardware.location.xml \
    frameworks/base/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/base/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/base/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/base/data/etc/android.hardware.sensor.light.xml:system/etc/permissions/android.hardware.sensor.light.xml \
    frameworks/base/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    packages/wallpapers/LivePicker/android.software.live_wallpaper.xml:system/etc/permissions/android.software.live_wallpaper.xml

# Sensors
PRODUCT_COPY_FILES += \
    device/samsung/transform/prebuilt/akmd/akmd2:system/bin/akmd2

# Wifi
PRODUCT_COPY_FILES += \
    device/samsung/transform/prebuilt/wifi/nvram_net.txt:system/etc/wifi/nvram_net.txt \
    device/samsung/transform/prebuilt/wifi/libwlandut.so:system/lib/libwlandut.so \
    device/samsung/transform/prebuilt/wifi/libwlservice.so:system/lib/libwlservice.so \
    device/samsung/transform/prebuilt/wifi/libwpa_client.so:system/lib/libwpa_client.so \
    device/samsung/transform/prebuilt/wifi/wlservice:system/bin/wlservice \
    device/samsung/transform/prebuilt/wifi/wpa_supplicant:system/bin/wpa_supplicant \
    device/samsung/transform/prebuilt/wifi/wifi.conf:system/etc/wifi/wifi.conf \
    device/samsung/transform/prebuilt/wifi/nvram_mfg.txt:system/etc/wifi/nvram_mfg.txt \
    device/samsung/transform/prebuilt/wifi/bcm4329_mfg.bin:system/etc/wifi/bcm4329_mfg.bin 
    
#
# CDMA data
#
PRODUCT_COPY_FILES += \
    device/samsung/transform/prebuilt/data/chap-secrets:system/etc/ppp/chap-secrets \
    device/samsung/transform/prebuilt/data/init.gprs-pppd:system/etc/init.gprs-pppd \
    device/samsung/transform/prebuilt/data/ip-down:system/etc/ppp/ip-down \
    device/samsung/transform/prebuilt/data/ip-down-ppp0:system/etc/ppp/ip-down-ppp0 \
    device/samsung/transform/prebuilt/data/ip-up:system/etc/ppp/ip-up \
    device/samsung/transform/prebuilt/data/ip-up-ppp0:system/etc/ppp/ip-up-ppp0 \
    device/samsung/transform/prebuilt/data/ip-up-vpn:system/etc/ppp/ip-up-vpn \
    device/samsung/transform/prebuilt/data/options:system/etc/ppp/options \
    device/samsung/transform/prebuilt/data/pap-secrets:system/etc/ppp/pap-secrets

# VOLD
PRODUCT_COPY_FILES += \
	device/samsung/transform/prebuilt/vold/vold.fstab:system/etc/vold.fstab \
	device/samsung/transform/prebuilt/vold/vold:system/bin/vold
		
# Used by BusyBox
KERNEL_MODULES_DIR:=/lib/modules

# Telephony property for CDMA
PRODUCT_PROPERTY_OVERRIDES += \
   ro.config.vc_call_vol_steps=15 \
    ro.telephony.default_network=4 \
    ro.com.google.clientidbase=android-sprint-us \
    ro.cdma.home.operator.numeric=310120 \
    ro.cdma.home.operator.alpha=Sprint \
    net.cdma.pppd.authtype=require-pap \
    net.cdma.pppd.user=user[SPACE]SprintNextel \
    net.interfaces.defaultroute=cdma \
    net.connectivity.type=CDMA1 \
    mobiledata.interfaces=ppp0,uwbr0 \
    ro.telephony.ril_class=SamsungRIL \
    ro.telephony.ril.v3=datacall \
    ro.ril.samsung_cdma=true 

# These are the hardware-specific settings that are stored in system properties.
# Note that the only such settings should be the ones that are too low-level to
# be reachable from resources or other mechanisms.
PRODUCT_PROPERTY_OVERRIDES += \
       wifi.interface=eth0 \
       wifi.supplicant_scan_interval=120 \
       dalvik.vm.heapsize=32m \
       dalvik.vm.dexopt-data-only=1 \
       ro.opengles.version=65537

# enable Google-specific location features,
# like NetworkLocationProvider and LocationCollector
PRODUCT_PROPERTY_OVERRIDES += \
        ro.com.google.locationfeatures=1 \
        ro.com.google.networklocation=1

# Extended JNI checks
# The extended JNI checks will cause the system to run more slowly, but they can spot a variety of nasty bugs 
# before they have a chance to cause problems.
# Default=true for development builds, set by android buildsystem.
PRODUCT_PROPERTY_OVERRIDES += \
    ro.kernel.android.checkjni=0 \
    dalvik.vm.checkjni=false


# Kernel
LOCAL_KERNEL := device/samsung/transform/kernel.bin
PRODUCT_COPY_FILES += \
    $(LOCAL_KERNEL):kernel

# kernel modules
#PRODUCT_COPY_FILES += $(foreach module,\
#	$(wildcard device/samsung/transform/*.ko),\
#	$(module):system/lib/modules/$(notdir $(module)))

# See comment at the top of this file. This is where the other
# half of the device-specific product definition file takes care
# of the aspects that require proprietary drivers that aren't
# commonly available
$(call inherit-product-if-exists, vendor/samsung/transform/transform-vendor.mk)
