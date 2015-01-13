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

PKG_NAME="libiconv"
PKG_VERSION="20130504"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.gnu.org/software/libiconv/"
PKG_URL="http://sources.openelec.tv/devel/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS=""
PKG_BUILD_DEPENDS="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="libiconv: Library converting between character encodings"
PKG_LONGDESC="This library provides an iconv() implementation, for use on systems which don't have one, or whose implementation cannot convert from/to Unicode. This library is a drop-in soution for systems lacking a iconv() implementation in the C library."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$TARGET_NAME
}

configure_target() {
    chmod +x ./configure ./preload/configure ./libcharset/configure
    ./configure --host=$TARGET_NAME \
            --build=$HOST_NAME \
            --prefix=/usr \
            --sysconfdir=/etc \
            --disable-static \
            --enable-shared \
            --disable-nls \
            --disable-extra-encodings \
            --with-gnu-ld
}

makeinstall_target() {
    $MAKEINSTALL
}

post_install() {
    #mkdir -p $SYSROOT_PREFIX/usr/share/aclocal
        #cp srcm4/*.m4 $SYSROOT_PREFIX/usr/share/aclocal

    mkdir -p $INSTALL/usr/lib
        cp -P $ROOT/$PKG_BUILD/.$TARGET_NAME/lib/.libs/*.so* $INSTALL/usr/lib
        cp -P $ROOT/$PKG_BUILD/.$TARGET_NAME/libcharset/lib/.libs/*.so* $INSTALL/usr/lib
        cp -P $ROOT/$PKG_BUILD/.$TARGET_NAME/lib/charset.alias $INSTALL/usr/lib
}