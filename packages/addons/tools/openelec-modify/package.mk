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

PKG_NAME="openelec-modify"
PKG_VERSION="1"
PKG_REV="6"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain eventlircd lcdproc tbs-linux-drivers-cc"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="Modify Openelec"
PKG_LONGDESC="Modify Openelec"

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
  SQUASHFS_DIR=$ROOT/$BUILD/squashfs-4.3
  LCDPROC_DIR=$ROOT/$BUILD/lcdproc-0.5.7-cvs20140217
  TBS_DRIVER_DIR=$ROOT/$BUILD/tbs-linux-drivers-cc-baca66b
  VER_KERNEL="4.0.5"

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -PR $SQUASHFS_DIR/squashfs-tools/mksquashfs $ADDON_BUILD/$PKG_ADDON_ID/bin

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/updates/lcdproc-fix-install/update/usr/lib/lcdproc
    cp -PR $LCDPROC_DIR/.install_pkg/usr/lib/lcdproc/* $ADDON_BUILD/$PKG_ADDON_ID/updates/lcdproc-fix-install/update/usr/lib/lcdproc
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/updates/lcdproc-fix-install/update/usr/sbin
    cp -PR $LCDPROC_DIR/.install_pkg/usr/sbin/* $ADDON_BUILD/$PKG_ADDON_ID/updates/lcdproc-fix-install/update/usr/sbin

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/updates/tbscc-install/update/lib/modules/$VER_KERNEL/updates/tbs
    find $TBS_DRIVER_DIR/v4l/ -name \*.ko -exec cp {} $ADDON_BUILD/$PKG_ADDON_ID/updates/tbscc-install/update/lib/modules/$VER_KERNEL/updates/tbs \;
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/updates/tbscc-install/update/lib/firmware
    cp $TBS_DRIVER_DIR/v4l/firmware/*.fw $ADDON_BUILD/$PKG_ADDON_ID/updates/tbscc-install/update/lib/firmware
}


