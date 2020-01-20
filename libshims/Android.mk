LOCAL_PATH := $(call my-dir)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := asp.cpp
LOCAL_MODULE := libshim_asp
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
LOCAL_SRC_FILES += \
	egl.cpp \
	egl_2.cpp \
	egl_3.cpp \
	gpu.cpp

LOCAL_STATIC_LIBRARIES := libgcc
LOCAL_SHARED_LIBRARIES := libm libutils libutilscallstack libui libgui 
LOCAL_MODULE := libshim_egl
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)


include $(CLEAR_VARS)
LOCAL_SRC_FILES := camera.cpp camera_symbols.cpp
LOCAL_SHARED_LIBRARIES := libgui libui
LOCAL_C_INCLUDES := frameworks/native/include
LOCAL_MODULE := libshim_camera
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)

## libshim_GUI
include $(CLEAR_VARS)
LOCAL_SRC_FILES := \
	gui.cpp \
	gui_ext.cpp 

LOCAL_SHARED_LIBRARIES := libgui libui libutils
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

include $(CLEAR_VARS)
LOCAL_SRC_FILES := gpu.cpp
LOCAL_SHARED_LIBRARIES := libui libutils
LOCAL_MODULE := libshim_gpu
LOCAL_MODULE_TAGS := optional
LOCAL_PROPRIETARY_MODULE := true
include $(BUILD_SHARED_LIBRARY)
