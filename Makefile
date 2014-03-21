TARGET = :clang
ARCHS = armv7 arm64

include theos/makefiles/common.mk

BUNDLE_NAME = WhatsAppWidget
WhatsAppWidget_FILES = WhatsAppWidget.m
WhatsAppWidget_FRAMEWORKS = Foundation UIKit
WhatsAppWidget_LIBRARIES = prowidgets
WhatsAppWidget_INSTALL_PATH = /Library/ProWidgets/Widgets/
WhatsAppWidget_BUNDLE_EXTENSION = widget

include $(THEOS_MAKE_PATH)/bundle.mk

after-install::
	install.exec "killall -9 backboardd"