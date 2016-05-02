################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
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

PKG_NAME="custom"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain"
PKG_PRIORITY="optional"
PKG_SECTION="virtual"
PKG_SHORTDESC="custom: Metapackage for installing custom package"
PKG_LONGDESC="custom is a Metapackage for installing custom package"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

if [ "$KODI_ADDON_LCD" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-addon-lcd"
fi

if [ "$KODI_ADDON_TRANSMISSION" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-addon-transmission"
fi

if [ "$KODI_ADDON_AUDIO_MIXER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-addon-audio-mixer"
fi

if [ "$KODI_ADDON_RSS_EDITOR" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-addon-rss-editor"
fi

if [ "$KODI_ADDON_VDRFRONT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-addon-vdrfront kodi-addon-xvdr"
fi

if [ "$KODI_THEME_CONFLUENCE_PLOOD" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-theme-confluence-plood"
fi

if [ "$KODI_THEME_CONFLUENCE_EXTENTED" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-theme-confluence-extented"
fi

if [ "$KODI_THEME_ESTUARY" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kodi-theme-estuary"
fi

if [ "$OPENELEC_DEV_UPDATE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET openelec-dev-update"
fi

if [ "$LOCALES_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET kbd"
fi

if [ "$TRANSMISSION_SERVICE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET transmission"
fi

if [ "$OSCAM_SERVICE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET ccid oscam-service"
fi

if [ "$TVHEADEND_SERVICE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET tvheadend-service"
fi

if [ "$VDR_SERVICE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-service"
fi

if [ "$ADD_ARCHIVERS_ENABLED" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET unrar p7zip"
fi

if [ "$DEV_TOOLS_ENABLED" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET mc htop evtest hddtemp lm_sensors"
fi

if [ "$DVB_TOOLS_ENABLED" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET scan-s2 szap-s2"
fi

if [ "$PHP_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET php"
fi

if [ "$PERL_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET perl Date-Manip"
fi

if [ "$EPGUpdaters_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET xmltv2vdr zvdrtools"
fi

if [ "$LIBTORRENTS_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libtorrent-rasterbar"
fi

if [ "$ACESTREAM_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET acestream-engine"
fi

if [ "$GAME_EMULATORS" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET mupen64plus"
fi

if [ "$VLC_ENABLE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vlc vlc-htsp-plugin"
fi
