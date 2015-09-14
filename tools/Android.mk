
LOCAL_PATH:= $(call my-dir)
include $(CLEAR_VARS)

LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libmincrypt

LOCAL_MODULE := xcover3-mkbootimg

include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_MODULE := xcover3-unpackbootimg
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dtbtool.c
LOCAL_CFLAGS += -Wall
LOCAL_MODULE := xcover3-dtbTool
include $(BUILD_HOST_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := mkbootimg.c
LOCAL_STATIC_LIBRARIES := libmincrypt libcutils libc
LOCAL_MODULE := utility_xcover3-mkbootimg
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_STEM := xcover3-mkbootimg
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := unpackbootimg.c
LOCAL_STATIC_LIBRARIES := libcutils libc
LOCAL_MODULE := utility_xcover3-unpackbootimg
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_STEM := xcover3-unpackbootimg
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := dtbtool.c
LOCAL_CFLAGS += -Wall
LOCAL_STATIC_LIBRARIES := libcutils libc
LOCAL_MODULE := utility_xcover3-dtbTool
LOCAL_MODULE_TAGS := eng
LOCAL_MODULE_STEM := xcover3-dtbTool
LOCAL_MODULE_CLASS := UTILITY_EXECUTABLES
LOCAL_UNSTRIPPED_PATH := $(PRODUCT_OUT)/symbols/utilities
LOCAL_MODULE_PATH := $(PRODUCT_OUT)/utilities
LOCAL_FORCE_STATIC_EXECUTABLE := true
include $(BUILD_EXECUTABLE)

$(call dist-for-goals,dist_files,$(LOCAL_BUILT_MODULE))

