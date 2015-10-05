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

PKG_NAME="php"
PKG_VERSION="5.5.14"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="OpenSource"
PKG_SITE="http://www.php.net"
PKG_URL="http://www.php.net/distributions/$PKG_NAME-$PKG_VERSION.tar.bz2"
PKG_DEPENDS_TARGET="toolchain zlib pcre curl libressl"
PKG_PRIORITY="optional"
PKG_SECTION="custom/lang"
PKG_SHORTDESC="php: Scripting language especially suited for Web development"
PKG_LONGDESC="PHP is a widely-used general-purpose scripting language that is especially suited for Web development and can be embedded into HTML."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_TARGET="--disable-all \
                           --with-config-file-path=/etc \
                           --localstatedir=/var \
                           --enable-cli \
                           --enable-cgi \
			   --enable-sockets \
                           --enable-posix \
                           --enable-spl \
                           --enable-session \
                           --with-openssl=$SYSROOT_PREFIX/usr \
                           --disable-libxml \
                           --disable-xml \
                           --disable-xmlreader \
                           --disable-xmlwriter \
                           --disable-simplexml \
                           --with-zlib=$SYSROOT_PREFIX/usr \
                           --enable-exif \
                           --enable-ftp \
                           --with-gettext \
                           --without-gmp \
                           --enable-json \
                           --without-readline \
                           --enable-pcntl \
                           --enable-sysvmsg \
                           --enable-sysvsem \
                           --enable-sysvshm \
                           --enable-zip \
                           --enable-filter \
                           --enable-calendar \
                           --with-curl=$SYSROOT_PREFIX/usr \
                           --with-pcre-regex \
                           --without-sqlite3 \
                           --enable-pdo \
                           --without-pdo-sqlite \
                           --without-pdo-mysql"

makeinstall_target() {
  : # nothing to install
}

post_install() {
  mkdir -p $INSTALL/usr/bin
    cp $PKG_BUILD/.$TARGET_NAME/sapi/cgi/php-cgi $INSTALL/usr/bin
    cp $PKG_BUILD/.$TARGET_NAME/sapi/cli/php $INSTALL/usr/bin
}
