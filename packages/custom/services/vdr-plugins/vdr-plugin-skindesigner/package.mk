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

PKG_NAME="vdr-plugin-skindesigner"
PKG_VERSION="d405f84"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://projects.vdr-developer.org/projects/plg-skindesigner"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain vdr librsvg" 
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="A VDR skinning engine that displays XML based Skins"
PKG_LONGDESC="A VDR skinning engine that displays XML based Skins"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

VDR_DIR=$ROOT/$BUILD/vdr-9ab55b4

pre_configure_target() {
  export CFLAGS="$CFLAGS -fPIC"
  export CXXFLAGS="$CXXFLAGS -fPIC"
  export LDFLAGS="$LDFLAGS -fPIC"
}

make_target() {
  make subprojects VDRDIR=$VDR_DIR
  make VDRDIR=$VDR_DIR \
  LIBDIR="." \
  LOCALEDIR="./locale"
}

makeinstall_target() {
  : # installation not needed, done by create-addon script
}

post_install() {
  mkdir -p $SYSROOT_PREFIX/usr/include/libskindesignerapi
    cp -PR $ROOT/$PKG_BUILD/libskindesignerapi/*.h $SYSROOT_PREFIX/usr/include/libskindesignerapi
  mkdir -p $SYSROOT_PREFIX/usr/lib
    rm -f $SYSROOT_PREFIX/usr/lib/libskindesignerapi.*
    cp -PR $ROOT/$PKG_BUILD/libskindesignerapi/libskindesignerapi.so.0.0.1 $SYSROOT_PREFIX/usr/lib
    ln -s libskindesignerapi.so.0.0.1 $SYSROOT_PREFIX/usr/lib/libskindesignerapi.so.0
    ln -s libskindesignerapi.so.0.0.1 $SYSROOT_PREFIX/usr/lib/libskindesignerapi.so
  mkdir -p $SYSROOT_PREFIX/usr/lib/pkgconfig
    cp -PR $ROOT/$PKG_BUILD/libskindesignerapi/libskindesignerapi.pc $SYSROOT_PREFIX/usr/lib/pkgconfig
}
