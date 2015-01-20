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

PKG_NAME="M2Crypto"
PKG_VERSION="0.21.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="OSS"
PKG_SITE="http://pypi.python.org/simple/M2Crypto"
PKG_URL="http://pypi.python.org/packages/source/M/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS="Python openssl"
PKG_BUILD_DEPENDS="toolchain Python distutilscross:host"
PKG_PRIORITY="optional"
PKG_SECTION="noused"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_make_target() {
  export PYTHONXCPREFIX="$SYSROOT_PREFIX/usr"
  export LDFLAGS="$LDFLAGS -L$SYSROOT_PREFIX/usr/lib -L$SYSROOT_PREFIX/lib"
}

make_target() {
  python setup.py build --cross-compile build_ext --openssl=$LIB_PREFIX
}

makeinstall_target() {
  python setup.py install --root=./.install --prefix=/usr build_ext --openssl=$LIB_PREFIX
}

post_install() {
  rm -rf .install/usr/lib/python*/site-packages/*.py
  cp -PR $ROOT/$PKG_BUILD/.install/* $INSTALL
}
