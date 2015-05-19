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

PKG_NAME="asplib"
PKG_VERSION="490de46"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPL"
PKG_SITE="https://github.com/AchimTuran/asplib"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="lib"
PKG_SHORTDESC="asplib (Achim's Signal Processing LIBrary), is a small and lightweight C++ library for digital signal processing."
PKG_LONGDESC="asplib (Achim's Signal Processing LIBrary), is a small and lightweight C++ library for digital signal processing."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

#PKG_CONFIGURE_OPTS_TARGET="--disable-shared --enable-static --with-sysroot=$SYSROOT_PREFIX"
