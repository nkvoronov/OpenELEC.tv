################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#
#  OpenELEC is free software: you can redistribute it and/or modify
#  it under the terms of the GNU General Public License as published by
#  the Free Software Foundation, either version 2 of the License, or
#  (at your option) any later version.
#
#  OpenELEC is distributed in the hope that it will be useful,
#  but WITHOUT ANY WARRANTY; without even the implied warranty of
#  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#  GNU General Public License for more details.
#
#  You should have received a copy of the GNU General Public License
#  along with OpenELEC.  If not, see <http://www.gnu.org/licenses/>.
################################################################################

PKG_NAME="alsaequal"
PKG_VERSION="0.6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.thedigitalmachine.net/alsaequal.html"
PKG_URL="http://www.thedigitalmachine.net/tools/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain alsa-lib alsa-utils caps"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="Alsaequal is a real-time adjustable equalizer plugin for ALSA."
PKG_LONGDESC="Alsaequal is a real-time adjustable equalizer plugin for ALSA. It can be adjusted using an ALSA compatible mixer, like alsamixergui or alsamixer."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
    mv $BUILD/alsaequal $BUILD/$PKG_NAME-$PKG_VERSION
}

makeinstall_target() {
  : # nop
}

post_install() {
  mkdir -p $INSTALL/usr/lib/alsa
    cp -P $PKG_BUILD/libasound_module_*.so $INSTALL/usr/lib/alsa

  mkdir -p $INSTALL/usr/bin
    cp -PR $PKG_DIR/scripts/* $INSTALL/usr/bin

  mkdir -p $INSTALL/usr/config
    cp -PR $PKG_DIR/config/*.conf $INSTALL/usr/config
}
