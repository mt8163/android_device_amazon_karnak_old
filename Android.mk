LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE),karnak)

include $(call first-makefiles-under,$(LOCAL_PATH))

FSTAB_SYMLINK := $(TARGET_ROOT_OUT)/fstab.mt8163
$(FSTAB_SYMLINK): $(LOCAL_INSTALLED_MODULE)
	@echo "fstab link: $@"
	@mkdir -p $(dir $@)
	@rm -rf $@
	$(hide) ln -sf /vendor/etc/fstab.mt8163 $@

ALL_DEFAULT_INSTALLED_MODULES += $(FSTAB_SYMLINK)
endif
