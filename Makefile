target = appletv:12.1
DEBUG=0
include $(THEOS)/makefiles/common.mk

INSTALL_TARGET_PROCESSES = TVSystemMenuService 

BUNDLE_NAME = ProcessesModule

ProcessesModule_FILES = CCPMProcessesModule.m
ProcessesModule_INSTALL_PATH = /Library/TVSystemMenuModules
ProcessesModule_FRAMEWORKS = UIKit
ProcessesModule_PRIVATE_FRAMEWORKS = TVSystemMenuUI 
ProcessesModule_CFLAGS = -fobjc-arc  -F. -I.
ProcessesModule_LDFLAGS +=  -F. -I.

include $(THEOS_MAKE_PATH)/bundle.mk

internal-stage::
	$(ECHO_NOTHING)mkdir -p $(THEOS_STAGING_DIR)/Library/TVSystemMenuModules$(ECHO_END)
	
