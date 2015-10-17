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

PKG_NAME="libidn"
PKG_VERSION="1.32"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.gnutls.org"
PKG_URL="http://ftp.gnu.org/gnu/libidn/$PKG_NAME-$PKG_VERSION.tar.gz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="custom/devel"
PKG_SHORTDESC="libidn is a package designed for internationalized string handling based on the Stringprep, Punycode and IDNA specifications defined by the Internet Engineering Task Force (IETF) Internationalized Domain Names (IDN) working group, used for internationalized domain names. This is useful for converting data from the system's native representation into UTF-8, transforming Unicode strings into ASCII strings, allowing applications to use certain ASCII name labels (beginning with a special prefix) to represent non-ASCII name labels, and converting entire domain names to and from the ASCII Compatible Encoding (ACE) form."
PKG_LONGDESC="libidn is a package designed for internationalized string handling based on the Stringprep, Punycode and IDNA specifications defined by the Internet Engineering Task Force (IETF) Internationalized Domain Names (IDN) working group, used for internationalized domain names. This is useful for converting data from the system's native representation into UTF-8, transforming Unicode strings into ASCII strings, allowing applications to use certain ASCII name labels (beginning with a special prefix) to represent non-ASCII name labels, and converting entire domain names to and from the ASCII Compatible Encoding (ACE) form."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-static --disable-shared"

post_makeinstall_target() {
  rm -rf $INSTALL/usr/bin
}
