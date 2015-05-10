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

PKG_NAME="vsetv2xmltv"
PKG_VERSION="cf494bb"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain Python grab"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="vsetv2xmltv"
PKG_LONGDESC="vsetv2xmltv"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to make here
}

makeinstall_target() {
  : # nothing to install here
}

post_install() {
  mkdir -p $INSTALL/usr/config/epgs/bin
    cp -P $PKG_BUILD/vsetv2channels $INSTALL/usr/config/epgs/bin
    cp -P $PKG_BUILD/vsetv2xmltv $INSTALL/usr/config/epgs/bin

  mkdir -p $INSTALL/usr/config/epgs/resources/$PKG_NAME
    cp -P $PKG_BUILD/*.py $INSTALL/usr/config/epgs/resources/$PKG_NAME

  mkdir -p $INSTALL/usr/config/epgs/config/$PKG_NAME
    cp -P $PKG_DIR/config/*.cfg $INSTALL/usr/config/epgs/config/$PKG_NAME
}