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

PKG_NAME="xine-lib"
PKG_VERSION="4602e39"
#PKG_VERSION="1.2.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.xine-project.org/"
PKG_URL="https://dl.dropboxusercontent.com/u/6711518/source/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain ffmpeg"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="xine is a high-performance, portable and reusable multimedia playback engine."
PKG_LONGDESC="xine is a high-performance, portable and reusable multimedia playback engine."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$TARGET_NAME
}

configure_target() {
  strip_lto

  ./autogen.sh --host=$TARGET_NAME \
             --build=$HOST_NAME \
             --prefix=/usr \
             --with-external-ffmpeg \
             --disable-dxr3 \
             --disable-aalib \
             --disable-vcd \
             --disable-musepack
}

make_target() {
  make
  $MAKEINSTALL
}