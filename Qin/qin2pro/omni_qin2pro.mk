#
# Copyright 2012 The Android Open Source Project
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

# Release name
PRODUCT_RELEASE_NAME := qin2pro

# Inherit from this configs
$(call inherit-product, build/target/product/embedded.mk)
$(call inherit-product, build/target/product/core_64_bit.mk)
$(call inherit-product, vendor/omni/config/common.mk)

# Device identifier. This must come after all inclusions.

#Treble Support
$(call inherit-product, $(SRC_TARGET_DIR)/product/treble_common_64.mk)

#PRODUCT_COPY_FILES += \
#	$(LOCAL_PATH)/prebuilt/kernel:kernel \
#	$(LOCAL_PATH)/recovery.fstab:recovery.fstab

# Device identifier. This must come after all inclusions.

#Add treble compatibility
#PRODUCT_FULL_TREBLE_OVERRIDE := true 

#PRODUCT_PROPERTY_OVERRIDES := ro.treble.enabled=true

PRODUCT_DEVICE := qin2pro
PRODUCT_NAME := omni_qin2pro
PRODUCT_BRAND := Qin
PRODUCT_MODEL := qin2pro
PRODUCT_MANUFACTURER := Qin

PRODUCT_SYSTEM_PROPERTY_BLACKLIST += \
    ro.product.device \
    ro.product.name \
    ro.build.product

PRODUCT_PROPERTY_OVERRIDES += \
	ro.secure=1 \
	ro.adb.secure=0

