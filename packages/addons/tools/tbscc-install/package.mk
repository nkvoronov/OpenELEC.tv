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

PKG_NAME="tbscc-install"
PKG_VERSION="4.3"
PKG_REV="2"
PKG_ARCH="any"
PKG_LICENSE="nonfree"
PKG_SITE="http://www.tbsdtv.com/english/Download.html"
PKG_URL=""
PKG_DEPENDS_TARGET="tbs-linux-drivers-cc"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="Install Linux TBS tuner drivers"
PKG_LONGDESC="Install Linux TBS tuner drivers"

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_AUTORECONF="no"

VER_KERNEL="3.17.8"

make_target() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

addon() {
  TBS_DRIVER_DIR=$ROOT/$BUILD/tbs-linux-drivers-cc-c640286

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/update/lib/modules/$VER_KERNEL/updates/tbs
    find $TBS_DRIVER_DIR/v4l/ -name \*.ko -exec cp {} $ADDON_BUILD/$PKG_ADDON_ID/update/lib/modules/$VER_KERNEL/updates/tbs \;
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/update/lib/firmware
    cp $TBS_DRIVER_DIR/v4l/firmware/*.fw $ADDON_BUILD/$PKG_ADDON_ID/update/lib/firmware
}
