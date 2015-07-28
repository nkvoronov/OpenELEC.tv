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

PKG_NAME="tvheadend"
PKG_VERSION="d9cf931"
PKG_VERSIONA="4.1.361"
PKG_REV="47"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.lonelycoder.com/hts/tvheadend_overview.html"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libressl curl ffmpeg-tvheadend"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="tvheadend (Version: $PKG_VERSION): a TV streaming server for Linux supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, IPTV, and Analog video (V4L) as input sources."
PKG_LONGDESC="Tvheadend (Version: $PKG_VERSION) is a TV streaming server for Linux supporting DVB-S, DVB-S2, DVB-C, DVB-T, ATSC, IPTV, and Analog video (V4L) as input sources. It also comes with a powerful and easy to use web interface both used for configuration and day-to-day operations, such as searching the EPG and scheduling recordings. Even so, the most notable feature of Tvheadend is how easy it is to set up: Install it, navigate to the web user interface, drill into the TV adapters tab, select your current location and Tvheadend will start scanning channels and present them to you in just a few minutes. If installing as an Addon a reboot is needed"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

if [ "$TARGET_ARCH" == "arm" ] ; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libdvbcsa"
fi

post_unpack() {
  sed -e 's/VER="0.0.0~unknown"/VER="'$PKG_VERSIONA'~g'$PKG_VERSION'~openelec"/g' -i $PKG_BUILD/support/version
}

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$TARGET_NAME
  export CROSS_COMPILE=$TARGET_PREFIX
  if [ "$TARGET_ARCH" == "arm" ] ; then
    DVBCSA="--enable-dvbcsa"
  else
    # TODO force dvbcsa on all projects
    DVBCSA="--disable-dvbcsa"
  fi
}

configure_target() {
  PKG_CONFIG_PATH="$(get_build_dir ffmpeg-tvheadend)/.install_tmp/usr/lib/pkgconfig" \
  CFLAGS="$CFLAGS -I$(get_build_dir ffmpeg-tvheadend)/.install_tmp/usr/include" \
  LDFLAGS="$LDFLAGS -L$(get_build_dir ffmpeg-tvheadend)/.install_tmp/usr/lib" \
  ./configure --prefix=/usr \
            --arch=$TARGET_ARCH \
            --cpu=$TARGET_CPU \
            --cc=$TARGET_CC \
            --enable-hdhomerun_client \
            --enable-hdhomerun_static \
            --disable-avahi \
            --enable-libav \
            --enable-inotify \
            --enable-epoll \
            --disable-uriparser \
            --enable-tvhcsa \
            --enable-bundle \
            $DVBCSA \
            --disable-dbus_1 \
            --python=$ROOT/$TOOLCHAIN/bin/python
}

post_make_target() {
  $CC -O -fbuiltin -fomit-frame-pointer -fPIC -shared -o capmt_ca.so src/extra/capmt_ca.c -ldl
}

makeinstall_target() {
  : # nothing to do here
}
