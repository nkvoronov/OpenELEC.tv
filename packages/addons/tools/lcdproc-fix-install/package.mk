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

PKG_NAME="lcdproc-fix-install"
PKG_VERSION="0.5.7-cvs20140217"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://lcdproc.org/"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain lcdproc"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="lcdproc fix: cyrillic support"
PKG_LONGDESC="lcdproc fix: cyrillic support"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

addon() {
  LCDPROC_DIR=$ROOT/$BUILD/lcdproc-0.5.7-cvs20140217

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/update/usr/lib/lcdproc
    cp -PR $LCDPROC_DIR/.install_pkg/usr/lib/lcdproc/* $ADDON_BUILD/$PKG_ADDON_ID/update/usr/lib/lcdproc
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/update/usr/sbin
    cp -PR $LCDPROC_DIR/.install_pkg/usr/sbin/* $ADDON_BUILD/$PKG_ADDON_ID/update/usr/sbin
}


