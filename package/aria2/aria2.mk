################################################################################
#
# aria2
#
################################################################################

ARIA2_VERSION = 1.32.0
ARIA2_SOURCE = aria2-$(ARIA2_VERSION).tar.xz
ARIA2_SITE = https://github.com/aria2/aria2/releases/download/release-$(ARIA2_VERSION)
ARIA2_LICENSE = OpenSSL
ARIA2_LICENSE_FILES = LICENSE.OpenSSL

$(eval $(autotools-package))
