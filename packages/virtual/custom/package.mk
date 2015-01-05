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

PKG_NAME="custom"
PKG_VERSION=""
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE=""
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain mc kbd unrar scan-s2 szap-s2 kodi-addon-lcd kodi-addon-vdrfront kodi-addon-transmission kodi-theme-Confluence-plood htop transmission evtest grab tvheadend tvvdr ccid oscam p7zip hddtemp lm_sensors php alsaequal"
PKG_PRIORITY="optional"
PKG_SECTION="virtual"
PKG_SHORTDESC="custom: Metapackage for installing custom package"
PKG_LONGDESC="custom is a Metapackage for installing custom package"

PKG_IS_ADDON="no"
PKG_AUTORECONF="no"

PERL="yes"
OTHER="no"

if [ "$PERL" = "yes" ]; then
    case "$TARGET_ARCH" in
    i?86)
      #PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET perl Date-Manip"
    ;;
    x86_64)
      PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET perl Date-Manip"
    ;;
    esac  
fi

if [ "$OTHER" = "yes" ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET mupen64plus"
fi
