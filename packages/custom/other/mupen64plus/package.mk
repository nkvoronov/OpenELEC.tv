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
PKG_VERSION="1.99.4"
PKG_REV="4"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="http://mupen64plus.googlecode.com"
PKG_URL="http://mupen64plus.googlecode.com/files/$PKG_NAME-bundle-src-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain glib freetype"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="Nintendo 64 emulator"
PKG_LONGDESC="N64"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
    mv $BUILD/$PKG_NAME-bundle-src-$PKG_VERSION $BUILD/$PKG_NAME-$PKG_VERSION
}

make_target() {
    cd $ROOT/$PKG_BUILD
    ./m64p_build.sh
}

makeinstall_target() {
  : # nothing to do here
}

post_install() {

    mkdir -p $INSTALL/usr/bin
        cp -P $PKG_BUILD/source/mupen64plus-ui-console/projects/unix/mupen64plus $INSTALL/usr/bin
        cp -P $PKG_DIR/bin/* $INSTALL/usr/bin

    mkdir -p $INSTALL/usr/lib
        cp -P $PKG_BUILD/source/mupen64plus-core/projects/unix/libmupen64plus.so.* $INSTALL/usr/lib
        cp -P $PKG_BUILD/source/mupen64plus-audio-sdl/projects/unix/mupen64plus-audio-sdl.so $INSTALL/usr/lib
        cp -P $PKG_BUILD/source/mupen64plus-input-sdl/projects/unix/mupen64plus-input-sdl.so $INSTALL/usr/lib
        cp -P $PKG_BUILD/source/mupen64plus-rsp-hle/projects/unix/mupen64plus-rsp-hle.so $INSTALL/usr/lib
        cp -P $PKG_BUILD/source/mupen64plus-video-rice/projects/unix/mupen64plus-video-rice.so $INSTALL/usr/lib
        cp -P $PKG_BUILD/source/mupen64plus-video-glide64mk2/projects/unix/mupen64plus-video-glide64mk2.so $INSTALL/usr/lib

    mkdir -p $INSTALL/usr/config/mupen64plus
        cp -P $PKG_DIR/config/* $INSTALL/usr/config/mupen64plus
        cp -P $PKG_BUILD/source/mupen64plus-core/data/* $INSTALL/usr/config/mupen64plus -R
        cp -P $PKG_BUILD/source/mupen64plus-input-sdl/data/* $INSTALL/usr/config/mupen64plus -R
        cp -P $PKG_BUILD/source/mupen64plus-video-rice/data/* $INSTALL/usr/config/mupen64plus -R

    cd $INSTALL/usr/lib
    ln -s libmupen64plus.so.2.0.0 libmupen64plus.so.2
}
