LOCAL_PATH:= $(call my-dir)

include $(CLEAR_VARS)
ifdef OMAP_ENHANCEMENT
LOCAL_SRC_FILES := ion.c ion_ti.c
else
LOCAL_SRC_FILES := ion.c
endif
LOCAL_MODULE := libion
LOCAL_MODULE_TAGS := optional
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_SHARED_LIBRARY)

include $(CLEAR_VARS)
ifdef OMAP_ENHANCEMENT
LOCAL_SRC_FILES := ion.c ion_ti.c ion_test.c
else
LOCAL_SRC_FILES := ion.c ion_test.c
endif
LOCAL_MODULE := iontest
LOCAL_MODULE_TAGS := optional tests
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_EXECUTABLE)
