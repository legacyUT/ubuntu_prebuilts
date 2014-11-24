#
# Copyright 2014 Canonical Ltd.
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

LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := rootfspackage
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_UBUNTU_ROOTFS)
LOCAL_SRC_FILES := $(shell $(LOCAL_PATH)/unpack_rootfs.sh $(TARGET_OUT_UBUNTU_ROOTFS) $(PRODUCT_OUT)/ubunturootfs.img)
include $(BUILD_PREBUILT)

include $(CLEAR_VARS)
LOCAL_MODULE := custompackage
LOCAL_MODULE_CLASS := ETC
LOCAL_MODULE_PATH := $(TARGET_OUT_UBUNTU_CUSTOM)
LOCAL_SRC_FILES := $(shell $(LOCAL_PATH)/unpack_custom.sh $(TARGET_OUT_UBUNTU_CUSTOM) $(PRODUCT_OUT)/ubuntucustom.img)
include $(BUILD_PREBUILT)
