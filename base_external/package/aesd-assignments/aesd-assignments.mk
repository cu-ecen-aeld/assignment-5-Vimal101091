##############################################################
#
# AESD-ASSIGNMENTS
#
##############################################################

AESD_ASSIGNMENTS_VERSION = 3c742d5a153641bb6cb5f9af58ad883f02506d38
AESD_ASSIGNMENTS_SITE = git@github.com:cu-ecen-aeld/assignments-3-and-later-Vimal101091.git
AESD_ASSIGNMENTS_SITE_METHOD = git
AESD_ASSIGNMENTS_GIT_SUBMODULES = YES

define AESD_ASSIGNMENTS_BUILD_CMDS
      $(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/server clean
	$(TARGET_MAKE_ENV) $(MAKE) -C $(@D)/server CC="$(TARGET_CC)"
endef

define AESD_ASSIGNMENTS_INSTALL_TARGET_CMDS
# Create target conf directory
       $(INSTALL) -D -m 0755 $(@D)/server/aesdsocket $(TARGET_DIR)/usr/bin/aesdsocket
       $(INSTALL) -D -m 0755 $(@D)/server/aesdsocket-start-stop $(TARGET_DIR)/etc/init.d/S99aesdsocket
endef

$(eval $(generic-package))
