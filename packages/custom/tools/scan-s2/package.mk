################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="scan-s2"
PKG_VERSION="561c35ce2845"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://bitbucket.org/CrazyCat/scan-s2"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="scan-s2"
PKG_LONGDESC="scan-s2"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

makeinstall_target() {
  mkdir -p $INSTALL/usr/bin
    cp -P $ROOT/$PKG_BUILD/scan-s2 $INSTALL/usr/bin

  mkdir -p $INSTALL/usr/share/scan-s2
    cp -pR $ROOT/$PKG_BUILD/atsc $INSTALL/usr/share/scan-s2
    cp -pR $ROOT/$PKG_BUILD/dvb-c $INSTALL/usr/share/scan-s2
    cp -pR $ROOT/$PKG_BUILD/dvb-s $INSTALL/usr/share/scan-s2
    cp -pR $ROOT/$PKG_BUILD/dvb-t $INSTALL/usr/share/scan-s2
}

