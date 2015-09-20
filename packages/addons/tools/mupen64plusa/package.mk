################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
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
#  the Free Software Foundation, 51 Franklin Street, Suite 500, Boston, MA 02110, USA.
#  http://www.gnu.org/copyleft/gpl.html
################################################################################

PKG_NAME="mupen64plusa"
PKG_VERSION="2.0.0"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://mupen64plus.googlecode.com"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain mupen64plus mupen64plus-extraplugins"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="mupen64plus (Version: $PKG_VERSION): Nintendo 64 emulator."
PKG_LONGDESC="mupen64plus (Version: $PKG_VERSION): Nintendo 64 emulator."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to make here
}

makeinstall_target() {
  : # nothing to install here
}

addon() {
  MUPEN64PLUS_DIR=$(get_build_dir mupen64plus)
  MUPEN64PLUS_EXT_DIR=$(get_build_dir mupen64plus-extraplugins)

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config
    cp -PR $MUPEN64PLUS_DIR/test/*.ini $ADDON_BUILD/$PKG_ADDON_ID/config
    cp -P $MUPEN64PLUS_DIR/test/mupen64plus.cht $ADDON_BUILD/$PKG_ADDON_ID/config
    cp -P $MUPEN64PLUS_DIR/test/mupencheat.txt $ADDON_BUILD/$PKG_ADDON_ID/config
    cp -P $MUPEN64PLUS_DIR/test/font.ttf $ADDON_BUILD/$PKG_ADDON_ID/config
    cp -P $MUPEN64PLUS_DIR/test/m64p_test_rom.v64 $ADDON_BUILD/$PKG_ADDON_ID/config
    cp -P $MUPEN64PLUS_EXT_DIR/source/mupen64plus-video-glide64/data/*.ini $ADDON_BUILD/$PKG_ADDON_ID/config

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -P $MUPEN64PLUS_DIR/test/mupen64plus $ADDON_BUILD/$PKG_ADDON_ID/bin

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
    cp -P $MUPEN64PLUS_DIR/test/libmupen64plus.so.2.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libmupen64plus.so.2
    cp -P $MUPEN64PLUS_DIR/test/mupen64plus-*.so $ADDON_BUILD/$PKG_ADDON_ID/lib
    cp -P $MUPEN64PLUS_EXT_DIR/test/mupen64plus-*.so $ADDON_BUILD/$PKG_ADDON_ID/lib

  if [ "$TARGET_ARCH" = "i386" ]; then
    cp -P $ROOT/$BUILD/SDL-1.2.15/.i686-openelec-linux-gnu/build/.libs/libSDL-1.2.so.0.11.4 $ADDON_BUILD/$PKG_ADDON_ID/lib/libSDL-1.2.so.0
  elif [ "$TARGET_ARCH" = "x86_64" ]; then
    cp -P $ROOT/$BUILD/SDL-1.2.15/.x86_64-openelec-linux-gnu/build/.libs/libSDL-1.2.so.0.11.4 $ADDON_BUILD/$PKG_ADDON_ID/lib/libSDL-1.2.so.0
  fi

}
