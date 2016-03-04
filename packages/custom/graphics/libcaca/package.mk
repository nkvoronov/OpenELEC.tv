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

PKG_NAME="libcaca"
PKG_VERSION="0.99.beta18"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://caca.zoy.org/wiki/libcaca"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libncursesw5 slang libX11 libimlib2 freeglut3"
PKG_PRIORITY="optional"
PKG_SECTION="custom/graphics"
PKG_SHORTDESC="libcaca is the Colour AsCii Art library. It provides high level functions for colour text drawing, simple primitives for line, polygon and ellipse drawing, as well as powerful image to text conversion routines."
PKG_LONGDESC="libcaca is the Colour AsCii Art library. It provides high level functions for colour text drawing, simple primitives for line, polygon and ellipse drawing, as well as powerful image to text conversion routines."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"
