################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2011 Stephan Raue (stephan@openelec.tv)
#
#  This Program is free software; you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation; either version 2, or (at your option)
#  any later version.
#
#  This Program is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE. See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.tv; see the file COPYING.  If not, write to
#  the Free Software Foundation, 675 Mass Ave, Cambridge, MA 02139, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="mupen64plus-extraplugins"
PKG_VERSION="2.0.0"
PKG_REV="4"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://mupen64plus.googlecode.com"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain mupen64plus glew"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="Nintendo 64 emulator plugins"
PKG_LONGDESC="Nintendo 64 emulator plugins"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

BUILD_SRC="no"

make_target() {
  if [ "$BUILD_SRC" = yes ]; then
    API_DIR=$ROOT/$BUILD/mupen64plus-2.0.0/src/source/mupen64plus-core/src/api
    cd $ROOT/$PKG_BUILD/src
    ./m64p_build.sh V=1 APIDIR=$API_DIR
  fi
}

makeinstall_target() {
  : # nothing to do here
}

post_install() {

  mkdir -p $INSTALL/usr/lib
    if [ "$BUILD_SRC" = yes ]; then
      cp -P $PKG_BUILD/src/test/mupen64plus-*.so $INSTALL/usr/lib
    else
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/mupen64plus-*.so $INSTALL/usr/lib
    fi

  mkdir -p $INSTALL/usr/config/mupen64plus
    if [ "$BUILD_SRC" = yes ]; then
      cp -P $PKG_BUILD/src/source/mupen64plus-video-glide64/data/*.ini $INSTALL/usr/config/mupen64plus
    else
      cp -PR $PKG_BUILD/bin/$TARGET_ARCH/*.ini $INSTALL/usr/config/mupen64plus
    fi

}
