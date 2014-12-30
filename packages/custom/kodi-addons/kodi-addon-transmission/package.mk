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

PKG_NAME="kodi-addon-transmission"
PKG_VERSION="6fc9046"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="https://github.com/correl/Transmission-XBMC.git"
PKG_URL="https://dl.dropboxusercontent.com/u/6711518/source/kodi/$PKG_NAME-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain Python kodi-module-simplejson kodi-module-beautifulsoup kodi-module-six"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="A client for the popular Transmission BitTorrent application."
PKG_LONGDESC="Transmission-XBMC supports viewing, adding, removing, starting and stopping torrents. More advanced features may be added in future releases."

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to make here
}

makeinstall_target() {
  : # nothing to install here
}

post_install() {
  mkdir -p $INSTALL/usr/share/kodi/addons/script.transmission
    cp -PR $PKG_BUILD/* $INSTALL/usr/share/kodi/addons/script.transmission
}