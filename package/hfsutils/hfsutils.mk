################################################################################
#
# hfsutils
#
################################################################################

HFSUTILS_VERSION = 3.2.6
HFSUTILS_SOURCE = hfsutils-$(HFSUTILS_VERSION).tar.gz
HFSUTILS_SITE = ftp://ftp.mars.org/pub/hfs
HFSUTILS_LICENSE = GPLv2
HFSUTILS_LICENSE_FILES = COPYING

define HFSUTILS_INSTALL_TARGET_CMDS
	$(TARGET_MAKE_ENV) $(MAKE) DESTDIR=$(TARGET_DIR) PREFIX=/usr \
		-C $(@D) install
endef

$(eval $(autotools-package))
