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

PKG_NAME="tntnet"
PKG_VERSION="2.2.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL-2"
PKG_SITE="http://www.tntnet.org/"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_HOST="cxxtools:host zlib:host"
PKG_DEPENDS_TARGET="toolchain tntnet:host cxxtools"
PKG_PRIORITY="optional"
PKG_SECTION="python/web"
PKG_SHORTDESC="tntnet: C++ Dynamite for the Web"
PKG_LONGDESC="Tntnet is a modular, multithreaded, high performance webapplicationserver for C++"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PKG_CONFIGURE_OPTS_HOST="--disable-unittest \
                         --with-server=no \
                         --with-sdk=yes \
                         --with-demos=no \
                         --with-epoll=yes \
                         --with-ssl=no \
                         --with-stressjob=no"

PKG_CONFIGURE_OPTS_TARGET="--disable-unittest \
                           --with-sysroot=$SYSROOT_PREFIX \
                           --with-server=yes \
                           --with-sdk=yes \
                           --with-demos=no \
                           --with-epoll=yes \
                           --with-ssl=no \
                           --with-stressjob=no"

pre_make_target() {
  mkdir -p etc/init.d
    cp -P ../etc/init.d/tntnet.in etc/init.d
  mkdir -p etc/tntnet
    cp -P ../etc/tntnet/tntnet.xml.in etc/tntnet
}

post_makeinstall_target() {
  rm -rf $INSTALL/etc
  rm -rf $INSTALL/usr/share
}
