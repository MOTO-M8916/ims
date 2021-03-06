LOCAL_PATH := $(call my-dir)

include $(CLEAR_VARS)

LOCAL_PRELINK_MODULE := false

LOCAL_SRC_FILES:= \
    ims_camera_jni.cpp \
    jni_main.cpp \

LOCAL_C_INCLUDES += \
    $(JNI_H_INCLUDE) \
    system/core/base/include \
    bootable/recovery/minui/include \

LOCAL_SHARED_LIBRARIES := \
    libnativehelper \
    libcutils \
    libutils  \
    libdl \
    android.hidl.token@1.0-utils \
    android.hardware.graphics.bufferqueue@1.0 \
    android.hardware.graphics.common@1.0 \
    android.hardware.graphics.common@1.1 \

LOCAL_CFLAGS += \
     -O0 -g \
     -Wno-unused-parameter \
     -Wno-error \

LOCAL_PROPRIETARY_MODULE := true
LOCAL_PRIVATE_PLATFORM_APIS := true
LOCAL_MODULE := libimscamera_jni
LOCAL_MODULE_OWNER := qti
LOCAL_MODULE_TAGS := optional
LOCAL_PROGUARD_ENABLED := disabled

include $(BUILD_SHARED_LIBRARY)

