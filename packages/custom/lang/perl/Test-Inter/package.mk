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

PKG_NAME="Test-Inter"
PKG_VERSION="1.05"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://cpansearch.perl.org/"
PKG_URL="http://search.cpan.org/CPAN/authors/id/S/SB/SBECK/$PKG_NAME-$PKG_VERSION.tar.gz" 
PKG_DEPENDS_TARGET="toolchain perl"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="Test::Inter - framework for more readable interactive test scripts"
PKG_LONGDESC="Test::Inter - framework for more readable interactive test scripts"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  #USRPERLDIR="$SYSROOT_PREFIX/usr/lib/perl5/$PERL_VERSION:$SYSROOT_PREFIX/usr/lib/perl5/$PERL_VERSION/$TARGET_ARCH-linux:$SYSROOT_PREFIX/usr/lib/perl5/site_perl/$PERL_VERSION:$SYSROOT_PREFIX/usr/lib/perl5/site_perl/$PERL_VERSION/$TARGET_ARCH-linux"
  #export PERL5LIB=$USRPERLDIR

  perl Makefile.PL PREFIX=/usr \
    INSTALLPRIVLIB=/usr/lib/perl5 \
    INSTALLSCRIPT=/usr/bin \
    INSTALLSITELIB=/usr/lib/perl5/site_perl/$PERL_VERSION \
    INSTALLBIN=/usr/bin
  make
  make test
}

post_makeinstall_target() {
  rm -rf $INSTALL/usr/local
  rm -rf $INSTALL/usr/lib/perl
}