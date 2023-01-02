#
# Copyright (C) 2016 The CyanogenMod Project
# Copyright (C) 2017-2023 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),karnak)

include $(call first-makefiles-under,$(LOCAL_PATH))

NVDATA_SYMLINK := $(TARGET_OUT_VENDOR)/nvdata
$(NVDATA_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "nvdata link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /data/vendor/nvram $@


ALL_DEFAULT_INSTALLED_MODULES +=  \
$(NVDATA_SYMLINK)
endif
