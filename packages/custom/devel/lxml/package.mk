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

PKG_NAME="lxml"
PKG_VERSION="3.2.4"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE=""
PKG_SITE="http://lxml.de/"
PKG_URL="https://pypi.python.org/packages/source/l/lxml/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python distutilscross:host libxslt"
PKG_PRIORITY="optional"
PKG_SECTION="custom/devel"
PKG_SHORTDESC="lxml - XML and HTML with Python"
PKG_LONGDESC="lxml - XML and HTML with Python"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export CFLAGS="$CFLAGS -I$SYSROOT_PREFIX/usr/include/libxml2"
  export LDFLAGS="$LDFLAGS -L$SYSROOT_PREFIX/usr/lib -L$SYSROOT_PREFIX/lib"

  mv $SYSROOT_PREFIX/usr/bin/xml2-config $ROOT/$TOOLCHAIN/bin
}

make_target() {
  python setup.py build --cross-compile

  mv $ROOT/$TOOLCHAIN/bin/xml2-config $SYSROOT_PREFIX/usr/bin
}

makeinstall_target() {
  python setup.py install --root=./.install --prefix=/usr
}

post_install() {
  rm -rf .install/usr/lib/python*/site-packages/*.py
  cp -PR $ROOT/$PKG_BUILD/.install/* $INSTALL
}
