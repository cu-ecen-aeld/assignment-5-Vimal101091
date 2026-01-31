################################################################################
#
# ldd
#
################################################################################

LDD_VERSION = assignment-7-buildroot
LDD_SITE = https://github.com/cu-ecen-aeld/assignment-7-Vimal101091.git
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
