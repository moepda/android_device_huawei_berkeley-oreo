# Copyright 2014 The Android Open Source Project
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

$(call inherit-product, device/huawei/berkeley/full_berkeley.mk)

# Inherit DirtyUnicorns common telephony configuration
$(call inherit-product, vendor/du/config/common_full_phone.mk)

# Override Product Name for DirtyUnicorns
PRODUCT_NAME := du_berkeley
PRODUCT_DEVICE := berkeley
PRODUCT_BRAND := Huawei
PRODUCT_MODEL := Honor View 10

BUILD_FINGERPRINT := kirin970/kirin970/kirin970:8.1.0/OPM1.171019.011/jslave01241654:user/test-keys

# Security patch level override
PRODUCT_PROPERTY_OVERRIDES += \
    ro.vendor.override.security_patch=$(PLATFORM_SECURITY_PATCH)
