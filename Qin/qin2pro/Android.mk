LOCAL_PATH := $(call my-dir)

ifeq ($(TARGET_DEVICE), qin2pro)
	include $(call all-makefiles-under, $(LOCAL_PATH))
endif
