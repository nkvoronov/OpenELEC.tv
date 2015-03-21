################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2012 Stephan Raue (stephan@openelec.tv)
#      Copyright (C) 2011-2011 Gregor Fuis (gujs@openelec.tv)
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

PKG_NAME="oscam"
PKG_VERSION="10636"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.streamboard.tv/oscam/wiki"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain pcsc-lite"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="oscam: OSCam is Open Source Conditional Access Modul."
PKG_LONGDESC="OSCam is Open Source Conditional Access Modul."
PKG_DISCLAIMER="using oscam may be illegal in your country. if in doubt, do not install"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

configure_target() {
  cmake -DCMAKE_TOOLCHAIN_FILE=$CMAKE_CONF \
      -DCMAKE_INSTALL_PREFIX=/usr \
      -DLIBUSBDIR=$SYSROOT_PREFIX/usr \
      -DWITH_SSL=0 \
      -DHAVE_LIBCRYPTO=0 \
      -DHAVE_DVBAPI=1 -DWITH_STAPI=0 \
      -DWEBIF=1 \
      -DWITH_DEBUG=1 \
      -DOPTIONAL_INCLUDE_DIR=$SYSROOT_PREFIX/usr/include \
      ..
}

make_target() {
  make USE_PCSC=1 USE_LIBUSB=1
}

makeinstall_target() {
  : # nop
}
