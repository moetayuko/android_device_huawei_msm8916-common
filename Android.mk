#
# This empty Android.mk file exists to prevent the build system from
# automatically including any other Android.mk files under this directory.
#

LOCAL_PATH := $(call my-dir)

ifneq ($(filter c8817d,$(TARGET_DEVICE)),)
-include $(LOCAL_PATH)/AndroidBoard.mk
include $(call all-makefiles-under,$(LOCAL_PATH))
endif
