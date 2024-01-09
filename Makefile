export ARCHS = arm64 arm64e
export SYSROOT = $(THEOS)/sdks/iPhoneOS14.5.sdk
export THEOS_PACKAGE_SCHEME = rootless
ifneq ($(THEOS_PACKAGE_SCHEME), rootless)
export TARGET = iphone:clang:14.5:14.0
export PREFIX = $(THEOS)/toolchain/Xcode.xctoolchain/usr/bin/
else
export TARGET = iphone:clang:14.5:15.0
endif

INSTALL_TARGET_PROCESSES = SpringBoard
SUBPROJECTS = Tweak Preferences

include $(THEOS)/makefiles/common.mk
include $(THEOS_MAKE_PATH)/aggregate.mk
