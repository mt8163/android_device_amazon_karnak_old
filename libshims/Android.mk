LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := asp.cpp
LOCAL_MODULE := libshim_asp
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := amzn_dha.cpp
LOCAL_MODULE := libshim_drm
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := dha.cpp
LOCAL_MODULE := libshim_dha
LOCAL_MODULE_CLASS := SHARED_LIBRARIES
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)



include $(CLEAR_VARS)
LOCAL_SRC_FILES := egl.cpp
LOCAL_STATIC_LIBRARIES := libgcc
LOCAL_SHARED_LIBRARIES := libm
LOCAL_MODULE := libshim_egl
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera.cpp
LOCAL_SHARED_LIBRARIES := libgui libui
LOCAL_C_INCLUDES := frameworks/native/include
LOCAL_MODULE := libshim_camera
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

## libshim_GUI
include $(CLEAR_VARS)
LOCAL_SRC_FILES := gui.cpp
LOCAL_SHARED_LIBRARIES := libgui
LOCAL_MODULE := libshim_gui
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

## libshim_Sensor
include $(CLEAR_VARS)
LOCAL_SRC_FILES := sensor.cpp
LOCAL_C_INCLUDES += frameworks/native/libs/sensor/include/
LOCAL_SHARED_LIBRARIES := libsensor
LOCAL_MODULE := libshim_sensor
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

## libshim_drm
include $(CLEAR_VARS)
LOCAL_SRC_FILES := protobuf.cpp
LOCAL_SHARED_LIBRARIES := libprotobuf-cpp-lite
LOCAL_MODULE := libshim_protobuf
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
