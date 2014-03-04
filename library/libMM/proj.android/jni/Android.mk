LOCAL_PATH :=$(call my-dir)


include $(CLEAR_VARS)

LOCAL_MODULE := libpaymm


LOCAL_CFLAGS     :=  -I$(LOCAL_PATH)/../../src \
					 -I$(LOCAL_PATH)/../../../../libfaeris/src \
					 -I$(LOCAL_PATH)/../../../../libfaeris/src/support  \
					 -I$(LOCAL_PATH)/../../../../libextends/libluaexport/src/ \
					 -I$(LOCAL_PATH)/../../../../lib3rdparty/tolua++/include \
					 -I$(LOCAL_PATH)/../../../../lib3rdparty/lua/include \
					 -I$(LOCAL_PATH)../src/

LOCAL_LDFLAGS := -L$(LOCAL_PATH)/../../../../../application/L_Faeris/proj.android/libs/armeabi

LOCAL_SRC_FILES := ../../src/FsPayMM.cc \
				   ../../src/platform/android/com_faeris_libpaymm_Fs_libpayMMJni.cc \
				   ../../src/FsLibPayMMExport.cc \

LOCAL_LDLIBS    += -lfaeris

include $(BUILD_SHARED_LIBRARY)