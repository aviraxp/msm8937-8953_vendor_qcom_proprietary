LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)
LOCAL_MODULE := libwbc_jni
LOCAL_C_INCLUDES := $(TARGET_OUT_HEADERS)/common/inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../wbc_hal
LOCAL_SRC_FILES += wbc_jni.cpp

LOCAL_SHARED_LIBRARIES := \
        libhardware \
        libc \
        libcutils \
        libutils

LOCAL_MODULE_TAGS := optional

LOCAL_MODULE_OWNER := qti
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)
