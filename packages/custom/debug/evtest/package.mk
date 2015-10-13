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

PKG_NAME="evtest"
PKG_VERSION="1.30"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://cgit.freedesktop.org/evtest/"
PKG_URL="http://cgit.freedesktop.org/evtest/snapshot/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain libxml2"
PKG_PRIORITY="optional"
PKG_SECTION="custom/debug"
PKG_SHORTDESC="evtest: Simple tool for input event debugging."
PKG_LONGDESC="evtest is a simple tool for input event debugging."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

makeinstall_target() {
  : # nop
}

post_install() {
  mkdir -p $INSTALL/usr/bin
   cp -P $PKG_BUILD/.$TARGET_NAME/evtest $INSTALL/usr/bin
   cp -P $PKG_BUILD/.$TARGET_NAME/evtest-capture $INSTALL/usr/bin
}