################################################################################
#
# ldd
#
################################################################################
LDD_VERSION = 95464cdccfaa86f10019c972f4907328ea156163
LDD_SITE = git@github.com:cu-ecen-aeld/assignment-7-Vimal101091.git
LDD_SITE_METHOD = git
LDD_MODULE_SUBDIRS = misc-modules scull

define LDD_INSTALL_TARGET_CMDS
	$(INSTALL) -m 0755 $(@D)/scull/scull_load $(TARGET_DIR)/usr/bin
	$(INSTALL) -m 0755 $(@D)/scull/scull_unload $(TARGET_DIR)/usr/bin
endef

$(eval $(kernel-module))
$(eval $(generic-package))
