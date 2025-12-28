################################################################################
#
# ldd
#
################################################################################

LDD_VERSION = b00723e83fda3ca12b7b0fc23b04fd869a2ebe67
LDD_SITE = https://github.com/cu-ecen-aeld/assignment-7-Vimal101091.git
LDD_SITE_METHOD = git

LDD_MODULE_SUBDIRS = misc-modules scull

$(eval $(kernel-module))
$(eval $(generic-package))
