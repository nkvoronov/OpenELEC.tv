################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="lua"
PKG_VERSION="5.2.3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://www.lua.org/"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_HOST=""
PKG_DEPENDS_TARGET="toolchain readline:host"
PKG_PRIORITY="optional"
PKG_SECTION="custom/lang"
PKG_SHORTDESC="lua: A lightweight, extensible programming language"
PKG_LONGDESC="Lua is a powerful light-weight programming language designed for extending applications. Lua is also frequently used as a general-purpose, stand-alone language."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_build_host() {
  mkdir -p $PKG_BUILD/.$HOST_NAME
  cp -RP $PKG_BUILD/src/* $PKG_BUILD/.$HOST_NAME
}

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/src/* $PKG_BUILD/.$TARGET_NAME
}


make_host() {
  make -C .$HOST_NAME \
       INSTALL_TOP=/usr \
       PLAT=linux \
       CC="$HOST_CC" \
       AR="$HOST_AR rcu" \
       RANLIB="$HOST_RANLIB" \
       CFLAGS="$HOST_CFLAGS -fPIC -DPIC" \
       LDFLAGS="$HOST_LDFLAGS -fPIC -DPIC" \
       linux
}

make_target() {
  make -C .$TARGET_NAME \
       INSTALL_TOP=/usr \
       PLAT=linux \
       CC="$TARGET_CC" \
       AR="$TARGET_AR rcu" \
       RANLIB="$TARGET_RANLIB" \
       CFLAGS="$TARGET_CFLAGS -fPIC -DPIC" \
       LDFLAGS="$HOST_LDFLAGS -fPIC -DPIC" \
       linux
}

makeinstall_host() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

post_makeinstall_host() {
  mkdir -p $ROOT/$TOOLCHAIN/bin
    cp -P $ROOT/$PKG_BUILD/.$HOST_NAME/lua $ROOT/$TOOLCHAIN/bin
    cp -P $ROOT/$PKG_BUILD/.$HOST_NAME/luac $ROOT/$TOOLCHAIN/bin

  mkdir -p $SYSROOT_PREFIX/usr/lib
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/liblua.a $SYSROOT_PREFIX/usr/lib

  mkdir -p $SYSROOT_PREFIX/usr/lib/pkgconfig
    cp $PKG_DIR/config/lua5.2.pc $SYSROOT_PREFIX/usr/lib/pkgconfig

  mkdir -p $SYSROOT_PREFIX/usr/include
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/lua.h $SYSROOT_PREFIX/usr/include
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/luaconf.h $SYSROOT_PREFIX/usr/include
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/lualib.h $SYSROOT_PREFIX/usr/include
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/lauxlib.h $SYSROOT_PREFIX/usr/include
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/lua.hpp $SYSROOT_PREFIX/usr/include
}
