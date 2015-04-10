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

PKG_NAME="mksquashfs"
PKG_VERSION="4.3"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://squashfs.sourceforge.net/"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="mksquashfs (Version: $PKG_VERSION): squashfs-tools: A compressed read-only filesystem for Linux"
PKG_LONGDESC="mksquashfs (Version: $PKG_VERSION): Squashfs is intended to be a general read-only filesystem, for archival use (i.e. in cases where a .tar.gz file may be used), and in constrained block device/memory systems (e.g. embedded systems) where low overhead is needed. The filesystem is currently stable and has been tested on PowerPC, i386, SPARC and ARM architectures."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to make here
}

makeinstall_target() {
  : # nothing to install here
}

addon() {
  SQUASHFS_DIR=$ROOT/$BUILD/squashfs-4.3

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -PR $SQUASHFS_DIR/squashfs-tools/mksquashfs $ADDON_BUILD/$PKG_ADDON_ID/bin
}
