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

PKG_NAME="caps"
PKG_VERSION="0.9.24"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://quitte.de/dsp/caps.html"
PKG_URL="http://quitte.de/dsp/caps_$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain alsa-lib alsa-utils"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="CAPS is a collection of audio plugins"
PKG_LONGDESC="CAPS is a collection of audio plugins comprising basic virtual guitar amplification and a small range of classic effects, signal processors and generators of mostly elementary and occasionally exotic nature."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$TARGET_NAME
}

configure_target() {
  ./configure.py
}

makeinstall_target() {
  : # nop
}

post_install() {
  mkdir -p $INSTALL/usr/lib/ladspa
    cp -P $PKG_BUILD/caps.so $INSTALL/usr/lib/ladspa
}
