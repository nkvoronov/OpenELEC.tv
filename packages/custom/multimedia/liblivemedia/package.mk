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

PKG_NAME="liblivemedia"
PKG_VERSION="2014.01.13"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.live555.com/liveMedia"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="custom/multimedia"
PKG_SHORTDESC="This code forms a set of C++ libraries for multimedia streaming, using open standard protocols (RTP/RTCP, RTSP, SIP)"
PKG_LONGDESC="This code forms a set of C++ libraries for multimedia streaming, using open standard protocols (RTP/RTCP, RTSP, SIP)"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

pre_build_host() {
  mkdir -p $PKG_BUILD/.$HOST_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$HOST_NAME
}

pre_build_target() {
  mkdir -p $PKG_BUILD/.$TARGET_NAME
  cp -RP $PKG_BUILD/* $PKG_BUILD/.$TARGET_NAME
}

pre_configure_host() {
  export CFLAGS="$CFLAGS -fPIC -DPIC"
  export CXXFLAGS="$CXXFLAGS -fPIC -DPIC"
  export LDFLAGS="$LDFLAGS -fPIC -DPIC"
}

make_host() {
  ./genMakefiles linux  
  make

  #./genMakefiles linux-with-shared-libraries
  #make
}

make_target() {
  ./genMakefiles linux-with-shared-libraries
  make
}

makeinstall_host() {
  : # nothing to do here  
}

makeinstall_target() {
  : # nothing to do here
}

post_makeinstall_host() {

  mkdir -p $SYSROOT_PREFIX/usr/lib
  mkdir -p $SYSROOT_PREFIX/usr/lib/pkgconfig
    cp $PKG_DIR/config/live555.pc $SYSROOT_PREFIX/usr/lib/pkgconfig

  mkdir -p $SYSROOT_PREFIX/usr/include/BasicUsageEnvironment
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/BasicUsageEnvironment/include/* $SYSROOT_PREFIX/usr/include/BasicUsageEnvironment
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/BasicUsageEnvironment/*.a $SYSROOT_PREFIX/usr/lib
  mkdir -p $SYSROOT_PREFIX/usr/include/UsageEnvironment
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/UsageEnvironment/include/* $SYSROOT_PREFIX/usr/include/UsageEnvironment
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/UsageEnvironment/*.a $SYSROOT_PREFIX/usr/lib
  mkdir -p $SYSROOT_PREFIX/usr/include/groupsock
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/groupsock/include/* $SYSROOT_PREFIX/usr/include/groupsock
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/groupsock/*.a $SYSROOT_PREFIX/usr/lib
  mkdir -p $SYSROOT_PREFIX/usr/include/liveMedia
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/liveMedia/include/* $SYSROOT_PREFIX/usr/include/liveMedia
    cp $ROOT/$PKG_BUILD/.$HOST_NAME/liveMedia/*.a $SYSROOT_PREFIX/usr/lib
}
