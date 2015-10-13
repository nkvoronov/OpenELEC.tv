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

PKG_NAME="ncursesw-vlc"
PKG_VERSION="5.9"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="MIT"
PKG_SITE="http://www.gnu.org/software/ncurses/"
PKG_URL="http://ftp.gnu.org/pub/gnu/ncurses/ncurses-$PKG_VERSION.tar.gz"
PKG_SOURCE_DIR="ncurses-${PKG_VERSION}"
PKG_DEPENDS_TARGET="toolchain zlib"
PKG_PRIORITY="optional"
PKG_SECTION="custom/devel"
PKG_SHORTDESC="ncurses: The ncurses (new curses) library"
PKG_LONGDESC="The ncurses (new curses) library is a free software emulation of curses in System V Release 4.0, and more. It uses terminfo format, supports pads and color and multiple highlights and forms characters and function-key mapping, and has all the other SYSV-curses enhancements over BSD curses."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

unpack() {
  tar xzf "$SOURCES/$PKG_NAME/ncurses-${PKG_VERSION}.tar.gz" -C $BUILD
}

PKG_CONFIGURE_OPTS_TARGET="--without-ada \
                           --without-cxx \
                           --without-cxx-binding \
                           --disable-db-install \
                           --without-manpages \
                           --without-progs \
                           --without-tests \
                           --with-curses-h \
                           --with-shared \
                           --with-normal \
                           --without-debug \
                           --enable-widec \
			   --enable-ext-colors \
			   --enable-sigwinch \
                           --enable-echo \
                           --disable-warnings \
                           --enable-home-terminfo \
                           --disable-assertions"

pre_configure_target() {
  # causes some segmentation fault's (dialog) when compiled with gcc's link time optimization.
  strip_lto
}

makeinstall_target() {
  make install DESTDIR=$ROOT/$PKG_BUILD/.install_tmp $PKG_MAKEINSTALL_OPTS_TARGET
  mkdir -p $ROOT/$PKG_BUILD/.install_tmp/usr/lib/pkgconfig
    cp -P $PKG_DIR/config/* $ROOT/$PKG_BUILD/.install_tmp/usr/lib/pkgconfig
}
