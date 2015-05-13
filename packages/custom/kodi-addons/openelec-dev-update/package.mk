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

PKG_NAME="openelec-dev-update"
PKG_VERSION="82dfe59"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain Python kodi-module-requests kodi-module-beautifulsoup4 kodi-backup"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="This KODI  addon downloads and extracts OpenELEC development (nightly) builds and official releases, ready to be installed on the next reboot."
PKG_LONGDESC="This KODI  addon downloads and extracts OpenELEC development (nightly) builds and official releases, ready to be installed on the next reboot."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

post_unpack() {
  for patch in `ls $PKG_DIR/patches.upstream/*.patch`; do
    cat $patch | patch -d \
    `echo $BUILD/$PKG_NAME-$PKG_VERSION | cut -f1 -d\ ` -p1
  done
}

make_target() {
  : # nothing
}

makeinstall_target() {
  : # nothing
}

post_install() {
  mkdir -p $INSTALL/usr/share/kodi/addons/script.openelec.devupdate
    cp -PR $PKG_BUILD/* $INSTALL/usr/share/kodi/addons/script.openelec.devupdate
  
  rm -rf $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/resources/lib/.gitignore
  rm -rf $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/icon.svg
  rm -rf $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/README.md

  python -Wi -t -B $ROOT/$TOOLCHAIN/lib/python2.7/compileall.py $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/resources/lib/ -f
  rm -rf `find $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/resources/lib/ -name "*.py"`

  python -Wi -t -B $ROOT/$TOOLCHAIN/lib/python2.7/compileall.py $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/resources/__init__.py -f
  rm -rf $INSTALL/usr/share/kodi/addons/script.openelec.devupdate/resources/__init__.py
}
