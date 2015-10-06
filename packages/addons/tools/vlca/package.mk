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

PKG_NAME="vlca"
PKG_VERSION="2.2.1"
PKG_REV="6"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.videolan.org"
PKG_DEPENDS_TARGET="toolchain vlc"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="VideoLAN multimedia player and streamer"
PKG_LONGDESC="VLC is the VideoLAN project's media player. It plays MPEG, MPEG2, MPEG4, DivX, MOV, WMV, QuickTime, mp3, Ogg/Vorbis files, DVDs, VCDs, and multimedia streams from various network sources."

PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.python.script"
PKG_AUTORECONF="no"

make_target() {
  : # nothing to make here
}

makeinstall_target() {
  : # nothing to install here
}

addon() {
  VLC_DIR=$(get_build_dir_usr vlc)

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -R $VLC_DIR/.install_pkg/usr/bin/* $ADDON_BUILD/$PKG_ADDON_ID/bin/

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
    cp -R $VLC_DIR/.install_pkg/usr/lib/* $ADDON_BUILD/$PKG_ADDON_ID/lib/

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/share/vlc
    cp -R $VLC_DIR/.install_pkg/usr/share/vlc/* $ADDON_BUILD/$PKG_ADDON_ID/share/vlc/
}
