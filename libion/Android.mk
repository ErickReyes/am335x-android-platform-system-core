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

ifdef OMAP_ENHANCEMENT
include $(CLEAR_VARS)
LOCAL_SRC_FILES := ion.c ion_ti.c ion_test_2.c
LOCAL_MODULE := ion_ti_test2
LOCAL_MODULE_TAGS := optional tests
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_EXECUTABLE)

include $(CLEAR_VARS)
LOCAL_SRC_FILES := testlib.c ion.c ion_ti.c ion_tiler_test.c
LOCAL_MODULE := ion_tiler_test
LOCAL_MODULE_TAGS := optional tests
LOCAL_SHARED_LIBRARIES := liblog
include $(BUILD_EXECUTABLE)

endif
