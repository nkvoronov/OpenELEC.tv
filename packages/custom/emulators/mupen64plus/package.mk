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

PKG_NAME="mupen64plus"
PKG_VERSION="2.0.0"
PKG_REV="4"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://mupen64plus.googlecode.com"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain SDL libpng glib freetype"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="Nintendo 64 emulator"
PKG_LONGDESC="Nintendo 64 emulator"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

BUILD_SRC="yes"

make_target() {
  if [ "$BUILD_SRC" = yes ]; then
    cd $ROOT/$PKG_BUILD/src
    ./m64p_build.sh V=1 LIRC=1
  fi
}

makeinstall_target() {
  : # nothing to do here
}

post_install() {

  mkdir -p $INSTALL/usr/bin
    cp -P $PKG_DIR/scripts/* $INSTALL/usr/bin
    if [ "$BUILD_SRC" = yes ]; then
      cp -P $PKG_BUILD/src/test/mupen64plus $INSTALL/usr/bin
    else
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/mupen64plus $INSTALL/usr/bin
    fi

  mkdir -p $INSTALL/usr/lib
    if [ "$BUILD_SRC" = yes ]; then
      cp -P $PKG_BUILD/src/test/libmupen64plus.so.* $INSTALL/usr/lib
      cp -P $PKG_BUILD/src/test/mupen64plus-*.so $INSTALL/usr/lib
    else
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/libmupen64plus.so.* $INSTALL/usr/lib
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/mupen64plus-*.so $INSTALL/usr/lib
    fi

  if [ "$TARGET_ARCH" = "i386" ]; then
    cp -P $ROOT/$BUILD/SDL-1.2.15/.i686-openelec-linux-gnu/build/.libs/libSDL-1.2.so.* $INSTALL/usr/lib
  elif [ "$TARGET_ARCH" = "x86_64" ]; then
    cp -P $ROOT/$BUILD/SDL-1.2.15/.x86_64-openelec-linux-gnu/build/.libs/libSDL-1.2.so.* $INSTALL/usr/lib
  fi

  mkdir -p $INSTALL/usr/config/mupen64plus
    cp -P $PKG_DIR/config/* $INSTALL/usr/config/mupen64plus
    if [ "$BUILD_SRC" = yes ]; then
      cp -PR $PKG_BUILD/src/test/*.ini $INSTALL/usr/config/mupen64plus
      cp -P $PKG_BUILD/src/test/mupen64plus.cht $INSTALL/usr/config/mupen64plus
      cp -P $PKG_BUILD/src/test/font.ttf $INSTALL/usr/config/mupen64plus
      cp -P $PKG_BUILD/src/test/m64p_test_rom.v64 $INSTALL/usr/config/mupen64plus
    else
      cp -PR $PKG_BUILD/bin/$TARGET_ARCH/*.ini $INSTALL/usr/config/mupen64plus
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/mupen64plus.cht $INSTALL/usr/config/mupen64plus
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/font.ttf $INSTALL/usr/config/mupen64plus
      cp -P $PKG_BUILD/bin/$TARGET_ARCH/m64p_test_rom.v64 $INSTALL/usr/config/mupen64plus
    fi

}
