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

PKG_NAME="apsw"
PKG_VERSION="3.8.5-r1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE=""
PKG_SITE="https://github.com/rogerbinns/apsw/"
PKG_URL="https://pypi.python.org/packages/source/a/apsw/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain Python distutilscross:host"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="A Python wrapper for the SQLite embedded relational database engine."
PKG_LONGDESC="A Python wrapper for the SQLite embedded relational database engine."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDFLAGS="$LDFLAGS -L$SYSROOT_PREFIX/usr/lib -L$SYSROOT_PREFIX/lib"
}

make_target() {
  #python setup.py build --enable-all-extensions
  python setup.py build -g --enable=load_extension
}

makeinstall_target() {
  python setup.py install --root=./.install --prefix=/usr
}

post_install() {
  rm -rf .install/usr/lib/python*/site-packages/*.py
  cp -PR $ROOT/$PKG_BUILD/.install/* $INSTALL
}