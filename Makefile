# [K] (C)2020
# http://github.com/kongfl888

include $(TOPDIR)/rules.mk

PKG_NAME:=luci-k-permission
PKG_VERSION:=1.0
PKG_RELEASE:=0
PKG_DATE:=20200712

PKG_MAINTAINER:=kongfl888 <kongfl888@outlook.com>
PKG_LICENSE:=GPL-3.0

include $(INCLUDE_DIR)/package.mk

define Package/$(PKG_NAME)
  CATEGORY:=LuCI
  SUBMENU:=Luci
  TITLE:=luci-k-permission
  PKGARCH:=all
  DEPENDS:=+luci
endef

define Package/$(PKG_NAME)/description
	luci-k-permission
endef

define Build/Compile
endef

define Package/$(PKG_NAME)/install
	$(INSTALL_DIR) $(1)/usr
	cp -pR ./root/usr/* $(1)/usr/
	$(INSTALL_DIR) $(1)/etc
	cp -pR ./root/etc/* $(1)/etc/
endef

define Package/$(PKG_NAME)/postinst
#!/bin/sh
endef

define Package/$(PKG_NAME)/postrm
#!/bin/sh
endef

$(eval $(call BuildPackage,$(PKG_NAME)))

