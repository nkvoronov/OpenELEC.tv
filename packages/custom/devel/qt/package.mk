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

PKG_NAME="qt"
PKG_VERSION="4.8.6"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://qt-project.org"
PKG_URL="$DISTRO_CUSTOM_SRC/$PKG_NAME/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_BUILD_DEPENDS_TARGET="toolchain bzip2 Python zlib:host zlib libpng tiff dbus glib fontconfig mysql openssl linux-headers eglibc liberation-fonts-ttf font-util font-xfree86-type1 font-misc-misc alsa"
PKG_PRIORITY="optional"
PKG_SECTION="custom/devel"
PKG_SHORTDESC="Qt is a cross-platform C++ application framework. Qt's primary feature is its rich set of widgets that provide standard GUI functionality."
PKG_LONGDESC="Qt is a cross-platform C++ application framework. Qt's primary feature is its rich set of widgets that provide standard GUI functionality."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

QTDIR=$SYSROOT_PREFIX/usr

PKG_CONFIGURE_OPTS="-confirm-license \
		    -prefix $QTDIR \
		    -opensource \
		    -fast \
		    -system-sqlite \
		    -xmlpatterns \
		    -no-multimedia \
		    -no-audio-backend \
		    -no-phonon \
		    -no-phonon-backend \
		    -svg \
		    -no-webkit \
		    -script \
		    -scripttools \
		    -platform linux-g++-64 \
		    -system-zlib \
		    -system-libtiff \
		    -system-libpng \
		    -system-libjpeg \
		    -no-rpath \
		    -optimized-qmake \
		    -dbus-linked \
		    -reduce-relocations \
		    -no-separate-debug-info \
		    -verbose \
		    -no-nas-sound \
		    -no-openvg \
		    -lfontconfig \
		    -qvfb \
		    -nomake examples \
		    -nomake demos"

configure_target() {
  unset CC CXX AR OBJCOPY STRIP CFLAGS CXXFLAGS CPPFLAGS LDFLAGS LD RANLIB
  export QT_FORCE_PKGCONFIG=yes
  unset QMAKESPEC
  export QT4PREFIX=$QTDIR

  pushd $ROOT/$BUILD/$PKG_NAME-$PKG_VERSION
  ./configure $PKG_CONFIGURE_OPTS
  popd
}

make_target() {
  unset CC CXX AR OBJCOPY STRIP CFLAGS CXXFLAGS CPPFLAGS LDFLAGS LD RANLIB
  export QT_FORCE_PKGCONFIG=yes
  unset QMAKESPEC

  pushd $ROOT/$BUILD/$PKG_NAME-$PKG_VERSION
  make
  popd
}

makeinstall_target() {
  pushd $ROOT/$PKG_BUILD
  make install
  popd

  for file in $QTDIR/lib/pkgconfig/Qt*.pc; do
    sed -i -r 's/prefix=\//qtdir=\//g' $file
    sed -i -r 's/exec_prefix=\$\{prefix\}/exec_prefix=\$\{qtdir\}/g' $file
    sed -i -e '3 s/^/prefix=\/usr\n/;' $file
    perl -pi -e "s, -L$QTDIR/?\S+,,g" $file
    perl -pi -e "s, -L$ROOT/$BUILD/?\S+,,g" $file
    perl -pi -e "s, -I$QTDIR/?\S+,,g" $file
  done

  for file in $QTDIR/lib/libQt*.prl; do
    sed -r -e '/^QMAKE_PRL_BUILD_DIR/d'  -e 's/(QMAKE_PRL_LIBS =).*/\1/' -i $file
  done
}
