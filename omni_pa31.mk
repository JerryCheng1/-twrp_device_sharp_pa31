#
# Copyright 2016 The Android Open Source Project
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
PRODUCT_RELEASE_NAME := pa31

$(call inherit-product, build/target/product/embedded.mk)

# Inherit from our custom product configuration
$(call inherit-product, vendor/omni/config/common.mk)

PRODUCT_PROPERTY_OVERRIDES += \
    ro.hardware.keystore=msm8992

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := pa31
PRODUCT_NAME := omni_pa31
PRODUCT_BRAND := SHARP
PRODUCT_MODEL := SG503SH
PRODUCT_MANUFACTURER := SHARP

# AVB
PRODUCT_SUPPORTS_BOOT_SIGNER := true
PRODUCT_VERITY_SIGNING_KEY := build/target/product/security/verity
