LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)

LOCAL_CFLAGS += -DFEATURE_DSS_LINUX_ANDROID
LOCAL_CFLAGS += -DFEATURE_DATA_DS_PROFILE_LINUX

LOCAL_CFLAGS += -DFEATURE_DATA_DS_PROFILE_3GPP
LOCAL_CFLAGS += -DFEATURE_DATA_DS_PROFILE_3GPP2
LOCAL_CFLAGS += -DFEATURE_DS_PROFILE_ACCESS_QMI

LOCAL_C_INCLUDES := $(LOCAL_PATH)
LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/diag/include
LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/qmi/inc
LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/common/inc/
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../inc
LOCAL_C_INCLUDES += $(LOCAL_PATH)/../../dsutils/inc
LOCAL_C_INCLUDES += $(TARGET_OUT_HEADERS)/diag/include



LOCAL_SRC_FILES := ds_profile.c
LOCAL_SRC_FILES += ds_profile_3gpp2.c
LOCAL_SRC_FILES += ds_profile_3gpp2_qmi.c
LOCAL_SRC_FILES += ds_profile_3gpp.c
LOCAL_SRC_FILES += ds_profile_3gpp_qmi.c
LOCAL_SRC_FILES += ds_profile_plm_modem.c
LOCAL_SRC_FILES += ds_profile_os_linux.c
LOCAL_SRC_FILES += ds_util.c
LOCAL_SRC_FILES += ds_profilei.c

LOCAL_LDLIBS += -lpthread

LOCAL_SHARED_LIBRARIES := liblog libdiag libdsutils libqmi

LOCAL_MODULE := libdsprofile
LOCAL_MODULE_TAGS := optional

LOCAL_PRELINK_MODULE := false

LOCAL_MODULE_OWNER := qcom
LOCAL_PROPRIETARY_MODULE := true

include $(BUILD_SHARED_LIBRARY)