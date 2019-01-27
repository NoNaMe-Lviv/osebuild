include config.mk

LOCAL_PATH := $(DIR)

include $(CLEAR_VARS)
LOCAL_MODULE := libcrypto_static
LOCAL_SRC_FILES := $(LOCAL_PATH)/usr/lib/$(TARGET_PLATFORM)/$(TARGET_ARCH_ABI)/libcrypto_static.a
include $(PREBUILT_STATIC_LIBRARY)

ifeq ($(usb),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libusb1.0_static
LOCAL_SRC_FILES := $(LOCAL_PATH)/usr/lib/$(TARGET_PLATFORM)/$(TARGET_ARCH_ABI)/libusb1.0_static.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifeq ($(pcsc),true)
include $(CLEAR_VARS)
LOCAL_MODULE := libpcsclite_static
LOCAL_SRC_FILES := $(LOCAL_PATH)/usr/lib/$(TARGET_PLATFORM)/$(TARGET_ARCH_ABI)/libpcsclite_static.a
include $(PREBUILT_STATIC_LIBRARY)
endif

ifeq ($(stapi),true)
include $(CLEAR_VARS)
LOCAL_MODULE := wi_static
LOCAL_SRC_FILES := $(LOCAL_PATH)/../patches/stapi/libwi.a
include $(PREBUILT_STATIC_LIBRARY)
endif

##################################
config := --disable \
	WITH_SSL CLOCKFIX CARDREADER_DB2COM
####################################

include $(CLEAR_VARS)

LOCAL_C_INCLUDES := \
		$(LOCAL_PATH) \
		$(LOCAL_PATH)/$(CAM) \
		$(LOCAL_PATH)/usr/include \
		$(LOCAL_PATH)/usr/include/PCSC \
		$(LOCAL_PATH)/usr/include/$(TARGET_PLATFORM)/$(TARGET_ARCH_ABI)

LOCAL_SRC_FILES := $(SRC_FILES)

LOCAL_SRC_FILES += $(info $(shell ($(LOCAL_PATH)/$(CAM)/config.sh $(config) --make-config.mak)))
LOCAL_SRC_FILES += $(info $(shell ($(LOCAL_PATH)/$(CAM)/config.sh -s)))
LOCAL_SRC_FILES += $(info $(shell (make -C $(LOCAL_PATH)/$(CAM)/webif --no-print-directory --quiet)))
LOCAL_MODULE := oscam
LOCAL_LDLIBS := -lm -ldl
LOCAL_LDFLAGS := -Wl,--gc-sections
LOCAL_STATIC_LIBRARIES := libcrypto_static
LOCAL_CFLAGS := -O2 -ggdb -pipe -ffunction-sections -fdata-sections -fexpensive-optimizations \
		-DWITH_LIBCRYPTO=1 \
		-D'CS_CONFDIR="$(CONFDIR)"' \
		-D'CS_SVN_VERSION="$(REV)"' \
		-D'CS_TARGET="$(TOOLCHAIN_NAME) ($(PLATFORM))"'

ifeq ($(usb),true)
LOCAL_CFLAGS += -DWITH_LIBUSB=1 -DHAVE_PTHREAD_H
LOCAL_LDFLAGS += -llog
LOCAL_STATIC_LIBRARIES += libusb1.0_static
endif

ifeq ($(pcsc),true)
LOCAL_CFLAGS += -DWITH_PCSC=1
LOCAL_STATIC_LIBRARIES += libpcsclite_static
endif

ifeq ($(stapi),true)
LOCAL_CFLAGS += -DWITH_STAPI=1
LOCAL_STATIC_LIBRARIES += wi_static
endif

include $(BUILD_EXECUTABLE)
