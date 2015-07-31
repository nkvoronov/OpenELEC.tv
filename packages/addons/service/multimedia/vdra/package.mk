################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
#      Copyright (C) 2011 Anthony Nash (nash.ant@gmail.com)
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

PKG_NAME="vdra"
PKG_VERSION="2.2.0"
PKG_REV="47"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.openelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain attr libcap vdr"
PKG_PRIORITY="optional"
PKG_SECTION="service.multimedia"
PKG_SHORTDESC="vdr: A powerful DVB TV application"
PKG_LONGDESC="This project describes how to build your own digital satellite receiver and video disk recorder. It is based mainly on the DVB-S digital satellite receiver card, which used to be available from Fujitsu Siemens and the driver software developed by the LinuxTV project."
PKG_AUTORECONF="no"
PKG_IS_ADDON="yes"
PKG_ADDON_TYPE="xbmc.service"

ENABLE_VDR_CONTROL="yes" 
ENABLE_VDR_DUMMYDEVICE="yes"
ENABLE_VDR_EPGSEARCH="yes"
ENABLE_VDR_IPTV="yes"
ENABLE_VDR_PLUGIN_DVBAPI="yes"
ENABLE_VDR_PLUGIN_EEPG="yes"
ENABLE_VDR_PLUGIN_EPGFIXER="yes"
ENABLE_VDR_LIVE="yes"
ENABLE_VDR_PLUGIN_RESTFULAPI="yes" 
ENABLE_VDR_PLUGIN_STREAMDEV="yes"
ENABLE_VDR_PLUGIN_VNSISERVER="yes"
ENABLE_VDR_PLUGIN_XMLTV2VDR="yes"
ENABLE_VDR_PLUGIN_XVDR="yes"
ENABLE_VDR_SATIP="yes"
ENABLE_VDR_WIRBELSCAN="yes"
ENABLE_VDR_FEMON="yes"
ENABLE_VDR_FILEBROWSER="yes" 
ENABLE_VDR_PLUGIN_LCDPROC="yes"
ENABLE_VDR_PLUGIN_MENUORG="yes"
ENABLE_VDR_PLUGIN_SLEEPTIMER="yes"
ENABLE_VDR_PLUGIN_SOFTHDDEVICE="yes"
ENABLE_VDR_PLUGIN_TEXT2SKIN="yes"
ENABLE_VDR_PLUGIN_TVGUIDE="yes"
ENABLE_VDR_PLUGIN_TVSCRAPER="yes"
ENABLE_VDR_PLUGIN_UPNP="yes"
ENABLE_VDR_PLUGIN_XINELIBOUTPUT="yes"  
ENABLE_VDR_SKIN_FLAT="yes"
ENABLE_VDR_SKIN_FLATPLUS="yes"
ENABLE_VDR_SKIN_NOPACITY="yes"
ENABLE_VDR_SYSTEMINFO="yes"
ENABLE_VDR_PLUGIN_SKINDESIGNER="yes"
ENABLE_VDR_PLUGIN_WEATHERFORECAST="yes"

if [ "$ENABLE_VDR_CONTROL" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-control"  
fi

if [ "$ENABLE_VDR_DUMMYDEVICE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-dummydevice"  
fi

if [ "$ENABLE_VDR_EPGSEARCH" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-epgsearch"  
fi

if [ "$ENABLE_VDR_IPTV" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-iptv"  
fi

if [ "$ENABLE_VDR_PLUGIN_DVBAPI" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-dvbapi"  
fi

if [ "$ENABLE_VDR_PLUGIN_EEPG" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-eepg"  
fi

if [ "$ENABLE_VDR_PLUGIN_EPGFIXER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-epgfixer"  
fi

if [ "$ENABLE_VDR_LIVE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-live"  
fi

if [ "$ENABLE_VDR_PLUGIN_RESTFULAPI" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-restfulapi"  
fi

if [ "$ENABLE_VDR_PLUGIN_STREAMDEV" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-streamdev"  
fi

if [ "$ENABLE_VDR_PLUGIN_VNSISERVER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-vnsiserver"  
fi

if [ "$ENABLE_VDR_PLUGIN_XMLTV2VDR" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-xmltv2vdr"  
fi

if [ "$ENABLE_VDR_PLUGIN_XVDR" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-xvdr"  
fi

if [ "$ENABLE_VDR_SATIP" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-satip"  
fi

if [ "$ENABLE_VDR_WIRBELSCAN" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-wirbelscan vdr-wirbelscancontrol"  
fi

if [ "$ENABLE_VDR_FEMON" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-femon"  
fi

if [ "$ENABLE_VDR_FILEBROWSER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-filebrowser"  
fi

if [ "$ENABLE_VDR_PLUGIN_LCDPROC" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-lcdproc"  
fi

if [ "$ENABLE_VDR_PLUGIN_MENUORG" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-menuorg"  
fi

if [ "$ENABLE_VDR_PLUGIN_SLEEPTIMER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-sleeptimer"  
fi

if [ "$ENABLE_VDR_PLUGIN_SOFTHDDEVICE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-softhddevice"  
fi

if [ "$ENABLE_VDR_PLUGIN_TEXT2SKIN" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-text2skin"  
fi

if [ "$ENABLE_VDR_PLUGIN_TVGUIDE" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-tvguide"  
fi

if [ "$ENABLE_VDR_PLUGIN_TVSCRAPER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-tvscraper"  
fi

if [ "$ENABLE_VDR_PLUGIN_UPNP" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-upnp"  
fi

if [ "$ENABLE_VDR_PLUGIN_XINELIBOUTPUT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-xineliboutput"  
fi

if [ "$ENABLE_VDR_SKIN_FLAT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-skin-flat"  
fi

if [ "$ENABLE_VDR_SKIN_FLATPLUS" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-skin-flatplus"  
fi

if [ "$ENABLE_VDR_SKIN_NOPACITY" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-skin-nopacity"  
fi

if [ "$ENABLE_VDR_SYSTEMINFO" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-systeminfo"  
fi

if [ "$ENABLE_VDR_PLUGIN_SKINDESIGNER" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-skindesigner"  
fi

if [ "$ENABLE_VDR_PLUGIN_WEATHERFORECAST" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET vdr-plugin-weatherforecast"  
fi

make_target() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

addon() {
  VDR_DIR=$ROOT/$BUILD/vdr-9ab55b4
  API_VERSION="2.2.0"
  TNTNET_DIR=$ROOT/$BUILD/tntnet-2.2.1
  TNTDB_DIR=$ROOT/$BUILD/tntdb-1.3
  LIBUPNP_DIR=$ROOT/$BUILD/libupnp-1.6.19
  GLIBMM_DIR=$ROOT/$BUILD/glibmm-2.39.93
  LIBXMLPP_DIR=$ROOT/$BUILD/libxml++-2.36.0
  LIBSIGPP_DIR=$ROOT/$BUILD/libsigc++-2.2.10
  LIBXCB_DIR=$ROOT/$BUILD/libxcb-1.11
  LIBXCBUTIL_DIR=$ROOT/$BUILD/xcb-util-0.3.9
  LIBXCBUTILIMAGE_DIR=$ROOT/$BUILD/xcb-util-image-0.3.9
  LIBXCBUTILKEYSYMS_DIR=$ROOT/$BUILD/xcb-util-keysyms-0.3.9
  LIBXCBUTILRENDERUTIL_DIR=$ROOT/$BUILD/xcb-util-renderutil-0.3.9
  LIBXCBUTILWM_DIR=$ROOT/$BUILD/xcb-util-wm-0.4.1
  JANSSON_DIR=$ROOT/$BUILD/jansson-2.6
  #IM_DIR=$ROOT/$BUILD/ImageMagick-6.9.0-10
  IM_DIR=$ROOT/$BUILD/ImageMagick-6.7.7-10
  XINELIB_DIR=$ROOT/$BUILD/xine-lib-666337a
  LIBXFT_DIR=$ROOT/$BUILD/libXft-2.3.2
  CAIRO_DIR=$ROOT/$BUILD/cairo-1.12.16
  PANGO_DIR=$ROOT/$BUILD/pango-1.36.3
  HARFBUZZ_DIR=$ROOT/$BUILD/harfbuzz-0.9.27
  GDK_PIXBUF_DIR=$ROOT/$BUILD/gdk-pixbuf-2.28.2
  LIBCROCO_DIR=$ROOT/$BUILD/libcroco-0.6.8
  LIBRSVG_DIR=$ROOT/$BUILD/librsvg-2.40.9
  
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -P $VDR_DIR/vdr $ADDON_BUILD/$PKG_ADDON_ID/bin/vdr.bin
    cp -P $VDR_DIR/svdrpsend $ADDON_BUILD/$PKG_ADDON_ID/bin/svdrpsend

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config
    cp $VDR_DIR/scr.conf $ADDON_BUILD/$PKG_ADDON_ID/config
    cp $VDR_DIR/sources.conf $ADDON_BUILD/$PKG_ADDON_ID/config
    cp $VDR_DIR/svdrphosts.conf $ADDON_BUILD/$PKG_ADDON_ID/config
    echo '0.0.0.0/0' >> $ADDON_BUILD/$PKG_ADDON_ID/config/svdrphosts.conf
    cp -PR $PKG_DIR/config/vdr/* $ADDON_BUILD/$PKG_ADDON_ID/config

  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
  mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr

  for fmo in `ls $VDR_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
      cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr.mo    
  done

  if [ "$ENABLE_VDR_CONTROL" = yes ]; then
    VDR_PLUGIN_CONTROL_DIR=$ROOT/$BUILD/vdr-control-0.0.2a
    cp -PR $VDR_PLUGIN_CONTROL_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_CONTROL_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-control.mo    
    done
  fi

  if [ "$ENABLE_VDR_DUMMYDEVICE" = yes ]; then
    VDR_PLUGIN_DUMMYDEVICE_DIR=$ROOT/$BUILD/vdr-dummydevice-2.0.0
    cp -PR $VDR_PLUGIN_DUMMYDEVICE_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
  fi

  if [ "$ENABLE_VDR_EPGSEARCH" = yes ]; then
    VDR_PLUGIN_EPGSEARCH_DIR=$ROOT/$BUILD/vdr-epgsearch-0b09f90
    cp -PR $VDR_PLUGIN_EPGSEARCH_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/epgsearch
      cp -PR $VDR_PLUGIN_EPGSEARCH_DIR/conf/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/epgsearch
    for fmo in `ls $VDR_PLUGIN_EPGSEARCH_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-epgsearch.mo    
    done
  fi

  if [ "$ENABLE_VDR_IPTV" = yes ]; then
    VDR_PLUGIN_IPTV_DIR=$ROOT/$BUILD/vdr-iptv-2.2.1
    cp -PR $VDR_PLUGIN_IPTV_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/iptv
      cp -PR $VDR_PLUGIN_IPTV_DIR/iptv/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/iptv
    for fmo in `ls $VDR_PLUGIN_IPTV_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-iptv.mo    
    done
  fi 

  if [ "$ENABLE_VDR_PLUGIN_DVBAPI" = yes ]; then
    VDR_PLUGIN_DVBAPI_DIR=$ROOT/$BUILD/vdr-plugin-dvbapi-9d1ebaa
    cp -PR $VDR_PLUGIN_DVBAPI_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_DVBAPI_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-dvbapi.mo    
    done
  fi 

  if [ "$ENABLE_VDR_PLUGIN_EEPG" = yes ]; then
    VDR_PLUGIN_EEPG_DIR=$ROOT/$BUILD/vdr-plugin-eepg-9cd9a75
    cp -PR $VDR_PLUGIN_EEPG_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    #mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/eepg
    for fmo in `ls $VDR_PLUGIN_EEPG_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-eepg.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_EPGFIXER" = yes ]; then
    VDR_PLUGIN_EPGFIXER_DIR=$ROOT/$BUILD/vdr-plugin-epgfixer-1ad4aaf
    cp -PR $VDR_PLUGIN_EPGFIXER_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/epgfixer
      cp -PR $VDR_PLUGIN_EPGFIXER_DIR/epgfixer/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/epgfixer
    for fmo in `ls $VDR_PLUGIN_EPGFIXER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-epgfixer.mo    
    done
  fi

  if [ "$ENABLE_VDR_LIVE" = yes ]; then
    VDR_PLUGIN_LIVE_DIR=$ROOT/$BUILD/vdr-live-6ea279a
    cp -PR $VDR_PLUGIN_LIVE_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/live
      cp -PR $VDR_PLUGIN_LIVE_DIR/live/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/live
    for fmo in `ls $VDR_PLUGIN_LIVE_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-live.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $TNTNET_DIR/.install_pkg/usr/lib/libtntnet.so.12.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libtntnet.so.12
  fi

  if [ "$ENABLE_VDR_PLUGIN_RESTFULAPI" = yes ]; then
    VDR_PLUGIN_RESTFULAPI_DIR=$ROOT/$BUILD/vdr-plugin-restfulapi-7959ce2
    cp -PR $VDR_PLUGIN_RESTFULAPI_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/restfulapi
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/restfulapi/webapp
      cp -PR $VDR_PLUGIN_RESTFULAPI_DIR/web/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/restfulapi
      cp -PR $VDR_PLUGIN_RESTFULAPI_DIR/API.html $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/restfulapi
    for fmo in `ls $VDR_PLUGIN_RESTFULAPI_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-restfulapi.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagick++.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagick++.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickCore.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickCore.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickWand.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickWand.so.5
  fi

  if [ "$ENABLE_VDR_PLUGIN_STREAMDEV" = yes ]; then
    VDR_PLUGIN_STREAMDEV_DIR=$ROOT/$BUILD/vdr-plugin-streamdev-84c6f6b
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/server/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/client/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/streamdev-server
      cp -PR $VDR_PLUGIN_STREAMDEV_DIR/streamdev-server/streamdevhosts.conf $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/streamdev-server
    for fmo in `ls $VDR_PLUGIN_STREAMDEV_DIR/server/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-streamdev-server.mo    
    done
    for fmo in `ls $VDR_PLUGIN_STREAMDEV_DIR/client/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-streamdev-client.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_VNSISERVER" = yes ]; then
    VDR_PLUGIN_VNSISERVER_DIR=$ROOT/$BUILD/vdr-plugin-vnsiserver-1c6888a
    cp -PR $VDR_PLUGIN_VNSISERVER_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/vnsiserver
      cp -PR $VDR_PLUGIN_VNSISERVER_DIR/vnsiserver/allowed_hosts.conf $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/vnsiserver
  fi

  if [ "$ENABLE_VDR_PLUGIN_XMLTV2VDR" = yes ]; then
    VDR_PLUGIN_XMLTV2VDR_DIR=$ROOT/$BUILD/vdr-plugin-xmltv2vdr-b48e0be
    cp -P $VDR_PLUGIN_XMLTV2VDR_DIR/dist/epgdata2xmltv/epgdata2xmltv $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -PR $VDR_PLUGIN_XMLTV2VDR_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/epgsources
      cp $VDR_PLUGIN_XMLTV2VDR_DIR/dist/epgdata2xmltv/epgdata2xmltv.dist $ADDON_BUILD/$PKG_ADDON_ID/config/epgsources/epgdata2xmltv
    cp -PR $VDR_PLUGIN_XMLTV2VDR_DIR/locale/* $ADDON_BUILD/$PKG_ADDON_ID/locale
  fi

  if [ "$ENABLE_VDR_PLUGIN_XVDR" = yes ]; then 
    VDR_PLUGIN_XVDR_DIR=$ROOT/$BUILD/vdr-plugin-xvdr-2d5e3f6
    cp -PR $VDR_PLUGIN_XVDR_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/xvdr
      cp -PR $VDR_PLUGIN_XVDR_DIR/xvdr/*.conf $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/xvdr
    for fmo in `ls $VDR_PLUGIN_XVDR_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-xvdr.mo    
    done
  fi

  if [ "$ENABLE_VDR_SATIP" = yes ]; then
    VDR_PLUGIN_SATIP_DIR=$ROOT/$BUILD/vdr-satip-2.2.2
    cp -PR $VDR_PLUGIN_SATIP_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_SATIP_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-satip.mo    
    done
  fi

  if [ "$ENABLE_VDR_WIRBELSCAN" = yes ]; then
    VDR_PLUGIN_WIRBELSCAN_DIR=$ROOT/$BUILD/vdr-wirbelscan-0.0.9
    VDR_PLUGIN_WIRBELSCANCONTROL_DIR=$ROOT/$BUILD/vdr-wirbelscancontrol-0.0.2
    cp -PR $VDR_PLUGIN_WIRBELSCAN_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    cp -PR $VDR_PLUGIN_WIRBELSCANCONTROL_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    cp -PR $VDR_PLUGIN_WIRBELSCAN_DIR/locale/* $ADDON_BUILD/$PKG_ADDON_ID/locale
    cp -PR $VDR_PLUGIN_WIRBELSCANCONTROL_DIR/locale/* $ADDON_BUILD/$PKG_ADDON_ID/locale
  fi

  if [ "$ENABLE_VDR_FEMON" = yes ]; then
    VDR_PLUGIN_FEMON_DIR=$ROOT/$BUILD/vdr-femon-2.2.1
    cp -PR $VDR_PLUGIN_FEMON_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_FEMON_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-femon.mo    
    done
  fi

  if [ "$ENABLE_VDR_FILEBROWSER" = yes ]; then
    VDR_PLUGIN_FILEBROWSER_DIR=$ROOT/$BUILD/vdr-filebrowser-0.2.1  
    cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/filebrowser
      cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/examples/filebrowser/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/filebrowser
    cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/locale/* $ADDON_BUILD/$PKG_ADDON_ID/locale
  fi

  if [ "$ENABLE_VDR_PLUGIN_LCDPROC" = yes ]; then
    VDR_PLUGIN_LCDPROC_DIR=$ROOT/$BUILD/vdr-plugin-lcdproc-0c54897
    cp -PR $VDR_PLUGIN_LCDPROC_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_LCDPROC_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-lcdproc.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_MENUORG" = yes ]; then
    VDR_PLUGIN_MENUORG_DIR=$ROOT/$BUILD/vdr-plugin-menuorg-cec1981
    cp -PR $VDR_PLUGIN_MENUORG_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/menuorg
      cp -PR $VDR_PLUGIN_MENUORG_DIR/menuorg.* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/menuorg
    for fmo in `ls $VDR_PLUGIN_MENUORG_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-menuorg.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $GLIBMM_DIR/.install_pkg/usr/lib/libgiomm-2.4.so.1.3.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libgiomm-2.4.so.1
      cp -P $GLIBMM_DIR/.install_pkg/usr/lib/libglibmm-2.4.so.1.3.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libglibmm-2.4.so.1
      cp -P $GLIBMM_DIR/.install_pkg/usr/lib/libglibmm_generate_extra_defs-2.4.so.1.3.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libglibmm_generate_extra_defs-2.4.so.1
      cp -P $LIBSIGPP_DIR/.install_pkg/usr/lib/libsigc-2.0.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libsigc-2.0.so.0
      cp -P $LIBXMLPP_DIR/.install_pkg/usr/lib/libxml++-2.6.so.2.0.7 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxml++-2.6.so.2
  fi

  if [ "$ENABLE_VDR_PLUGIN_SLEEPTIMER" = yes ]; then
    VDR_PLUGIN_SLEEPTIMER_DIR=$ROOT/$BUILD/vdr-plugin-sleeptimer-b777501
    cp -PR $VDR_PLUGIN_SLEEPTIMER_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_SLEEPTIMER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-sleeptimer.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_SOFTHDDEVICE" = yes ]; then
    VDR_PLUGIN_SOFTHDDEVICE_DIR=$ROOT/$BUILD/vdr-plugin-softhddevice-ec58e45
    cp -PR $VDR_PLUGIN_SOFTHDDEVICE_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    for fmo in `ls $VDR_PLUGIN_SOFTHDDEVICE_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-softhddevice.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb.so.1.1.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb.so.1
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-composite.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-composite.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-damage.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-damage.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-dpms.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-dpms.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-dri2.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-dri2.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-dri3.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-dri3.so.0
      cp -P $LIBXCBUTILWM_DIR/.install_pkg/usr/lib/libxcb-ewmh.so.2.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-ewmh.so.2
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-glx.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-glx.so.0
      cp -P $LIBXCBUTILWM_DIR/.install_pkg/usr/lib/libxcb-icccm.so.4.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-icccm.so.4
      cp -P $LIBXCBUTILIMAGE_DIR/.install_pkg/usr/lib/libxcb-image.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-image.so.0
      cp -P $LIBXCBUTILKEYSYMS_DIR/.install_pkg/usr/lib/libxcb-keysyms.so.1.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-keysyms.so.1
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-present.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-present.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-randr.so.0.1.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-randr.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-record.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-record.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-render.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-render.so.0
      cp -P $LIBXCBUTILRENDERUTIL_DIR/.install_pkg/usr/lib/libxcb-render-util.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-render-util.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-res.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-res.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-screensaver.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-screensaver.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-shape.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-shape.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-shm.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-shm.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-sync.so.1.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-sync.so.1
      cp -P $LIBXCBUTIL_DIR/.install_pkg/usr/lib/libxcb-util.so.1.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-util.so.1
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xevie.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xevie.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xf86dri.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xf86dri.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xfixes.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xfixes.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xinerama.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xinerama.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xkb.so.1.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xkb.so.1
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xprint.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xprint.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xtest.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xtest.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xv.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xv.so.0
      cp -P $LIBXCB_DIR/.install_pkg/usr/lib/libxcb-xvmc.so.0.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxcb-xvmc.so.0
  fi

  if [ "$ENABLE_VDR_PLUGIN_TEXT2SKIN" = yes ]; then
    VDR_PLUGIN_TEXT2SKIN_DIR=$ROOT/$BUILD/vdr-plugin-text2skin-7bd88a0 
    cp -PR $VDR_PLUGIN_TEXT2SKIN_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    cp -PR $VDR_PLUGIN_TEXT2SKIN_DIR/locale/* $ADDON_BUILD/$PKG_ADDON_ID/locale

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagick++.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagick++.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickCore.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickCore.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickWand.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickWand.so.5
  fi

  if [ "$ENABLE_VDR_PLUGIN_TVGUIDE" = yes ]; then
    VDR_PLUGIN_TVGUIDE_DIR=$ROOT/$BUILD/vdr-plugin-tvguide-8287bb5  
    cp -PR $VDR_PLUGIN_TVGUIDE_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/themes
      cp -PR $VDR_PLUGIN_TVGUIDE_DIR/themes/* $ADDON_BUILD/$PKG_ADDON_ID/config/themes
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/tvguide
      cp -PR $VDR_PLUGIN_TVGUIDE_DIR/icons $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/tvguide
    for fmo in `ls $VDR_PLUGIN_TVGUIDE_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-tvguide.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagick++.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagick++.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickCore.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickCore.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickWand.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickWand.so.5
  fi

  if [ "$ENABLE_VDR_PLUGIN_TVSCRAPER" = yes ]; then
    VDR_PLUGIN_TVSCRAPER_DIR=$ROOT/$BUILD/vdr-plugin-tvscraper-9a000ca
    cp -PR $VDR_PLUGIN_TVSCRAPER_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/tvscraper
      cp -PR $VDR_PLUGIN_TVSCRAPER_DIR/conf/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/tvscraper
    for fmo in `ls $VDR_PLUGIN_TVSCRAPER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-tvscraper.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $JANSSON_DIR/.install_pkg/usr/lib/libjansson.so.4.6.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libjansson.so.4
  fi

  if [ "$ENABLE_VDR_PLUGIN_UPNP" = yes ]; then
    VDR_PLUGIN_UPNP_DIR=$ROOT/$BUILD/vdr-plugin-upnp-11a035a
    cp -P $VDR_PLUGIN_UPNP_DIR/libvdr-upnp.so $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr/libvdr-upnp.so.$API_VERSION
    cp -PR $VDR_PLUGIN_UPNP_DIR/libupnp*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/upnp
      cp -PR $VDR_PLUGIN_UPNP_DIR/httpdocs $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/upnp
    for fmo in `ls $VDR_PLUGIN_UPNP_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-upnp.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $TNTNET_DIR/.install_pkg/usr/lib/libtntnet.so.12.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libtntnet.so.12
      cp -P $TNTNET_DIR/.install_pkg/usr/lib/libtntnet_sdk.so.12.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libtntnet_sdk.so.12
      cp -P $TNTDB_DIR/.install_pkg/usr/lib/libtntdb.so.4.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libtntdb.so.4
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib/tntnet
      cp -P $TNTNET_DIR/.install_pkg/usr/lib/tntnet/tntnet.so.12.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/tntnet/tntnet.so.12
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib/tntdb
      cp -P $TNTDB_DIR/.install_pkg/usr/lib/tntdb/tntdb4-mysql.so.4.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/tntdb/tntdb4-mysql.so
      cp -P $TNTDB_DIR/.install_pkg/usr/lib/tntdb/tntdb4-replicate.so.4.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/tntdb/tntdb4-replicate.so
      cp -P $TNTDB_DIR/.install_pkg/usr/lib/tntdb/tntdb4-sqlite.so.4.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/tntdb/tntdb4-sqlite.so
      cp -P $LIBUPNP_DIR/.install_pkg/usr/lib/libixml.so.2.0.8 $ADDON_BUILD/$PKG_ADDON_ID/lib/libixml.so.2
      cp -P $LIBUPNP_DIR/.install_pkg/usr/lib/libthreadutil.so.6.0.4 $ADDON_BUILD/$PKG_ADDON_ID/lib/libthreadutil.so.6
      cp -P $LIBUPNP_DIR/.install_pkg/usr/lib/libupnp.so.6.3.3 $ADDON_BUILD/$PKG_ADDON_ID/lib/libupnp.so.6
  fi

  if [ "$ENABLE_VDR_PLUGIN_XINELIBOUTPUT" = yes ]; then
    VDR_PLUGIN_XINEOUTPUT_DIR=$ROOT/$BUILD/vdr-plugin-xineliboutput-fa97b86
    XINE_VERSION="2.5"
    cp -P $VDR_PLUGIN_XINEOUTPUT_DIR/vdr-fbfe $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -P $VDR_PLUGIN_XINEOUTPUT_DIR/vdr-sxfe $ADDON_BUILD/$PKG_ADDON_ID/bin
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/libxineliboutput*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib/xine/plugins/$XINE_VERSION
      cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/xineplug_inp_xvdr.so $ADDON_BUILD/$PKG_ADDON_ID/lib/xine/plugins/$XINE_VERSION
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib/xine/plugins/$XINE_VERSION/post
      cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/xineplug_post_*.so $ADDON_BUILD/$PKG_ADDON_ID/lib/xine/plugins/$XINE_VERSION/post
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/xineliboutput
      cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/examples/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/xineliboutput
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/xine
      cp -PR $PKG_DIR/config/xine/* $ADDON_BUILD/$PKG_ADDON_ID/config/xine
    for fmo in `ls $VDR_PLUGIN_XINEOUTPUT_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-xineliboutput.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -PR $XINELIB_DIR/.install_pkg/usr/lib/xine $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $XINELIB_DIR/.install_pkg/usr/lib/libxine.so.2.5.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libxine.so.2
  fi

  if [ "$ENABLE_VDR_SKIN_FLAT" = yes ]; then
    VDR_PLUGIN_SKINFLAT_DIR=$ROOT/$BUILD/vdr-skin-flat-1040bb7 
    cp -PR $VDR_PLUGIN_SKINFLAT_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/themes
      cp -PR $VDR_PLUGIN_SKINFLAT_DIR/themes/* $ADDON_BUILD/$PKG_ADDON_ID/config/themes
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflat
      cp -PR $VDR_PLUGIN_SKINFLAT_DIR/icons $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflat
    for fmo in `ls $VDR_PLUGIN_SKINFLAT_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-skinflat.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagick++.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagick++.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickCore.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickCore.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickWand.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickWand.so.5
  fi

  if [ "$ENABLE_VDR_SKIN_FLATPLUS" = yes ]; then
    VDR_PLUGIN_SKINFLATPLUS_DIR=$ROOT/$BUILD/vdr-skin-flatplus-4420b93
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/themes
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/themes/* $ADDON_BUILD/$PKG_ADDON_ID/config/themes
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/icons $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/decors $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/configs $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/widgets $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinflatplus
    for fmo in `ls $VDR_PLUGIN_SKINFLATPLUS_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-skinflatplus.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagick++.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagick++.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickCore.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickCore.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickWand.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickWand.so.5
  fi

  if [ "$ENABLE_VDR_SKIN_NOPACITY" = yes ]; then
    VDR_PLUGIN_SKINNOPACITY_DIR=$ROOT/$BUILD/vdr-skin-nopacity-f593ad5
    cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/themes
      cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/themes/* $ADDON_BUILD/$PKG_ADDON_ID/config/themes
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinnopacity/themeconfigs
      cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/conf/*.conf $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinnopacity/themeconfigs
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinnopacity
      cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/icons $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skinnopacity
    for fmo in `ls $VDR_PLUGIN_SKINNOPACITY_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-skinnopacity.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagick++.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagick++.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickCore.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickCore.so.5
      cp -P $IM_DIR/.install_pkg/usr/lib/libMagickWand.so.5.0.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libMagickWand.so.5
  fi

  if [ "$ENABLE_VDR_SYSTEMINFO" = yes ]; then
    VDR_PLUGIN_SYSTEMINFO_DIR=$ROOT/$BUILD/vdr-systeminfo-0.1.3 
    cp -PR $VDR_PLUGIN_SYSTEMINFO_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    #mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/systeminfo
      #cp -PR $VDR_PLUGIN_SYSTEMINFO_DIR/scripts/* $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/systeminfo
    for fmo in `ls $VDR_PLUGIN_SYSTEMINFO_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-systeminfo.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_SKINDESIGNER" = yes ]; then
    VDR_PLUGIN_SKINDESINGER_DIR=$ROOT/$BUILD/vdr-plugin-skindesigner-b5c587b
    cp -PR $VDR_PLUGIN_SKINDESINGER_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $VDR_PLUGIN_SKINDESINGER_DIR/libskindesignerapi/libskindesignerapi.so.0.0.2 $ADDON_BUILD/$PKG_ADDON_ID/lib/libskindesignerapi.so.0
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/themes
      cp -PR $VDR_PLUGIN_SKINDESINGER_DIR/themes/* $ADDON_BUILD/$PKG_ADDON_ID/config/themes
    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skindesigner
      cp -PR $VDR_PLUGIN_SKINDESINGER_DIR/dtd $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skindesigner
      cp -PR $VDR_PLUGIN_SKINDESINGER_DIR/skins $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skindesigner
      cp -PR $VDR_PLUGIN_SKINDESINGER_DIR/scripts $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/skindesigner
    for fmo in `ls $VDR_PLUGIN_SKINDESINGER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
        cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-skindesigner.mo    
    done

    mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $JANSSON_DIR/.install_pkg/usr/lib/libjansson.so.4.6.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libjansson.so.4
      cp -P $LIBXFT_DIR/.install_pkg/usr/lib/libXft.so.2.3.2 $ADDON_BUILD/$PKG_ADDON_ID/lib/libXft.so.2
      cp -P $HARFBUZZ_DIR/.install_pkg/usr/lib/libharfbuzz.so.0.927.0 $ADDON_BUILD/$PKG_ADDON_ID/lib/libharfbuzz.so.0
      cp -P $LIBCROCO_DIR/.install_pkg/usr/lib/libcroco-0.6.so.3.0.1 $ADDON_BUILD/$PKG_ADDON_ID/lib/libcroco-0.6.so.3
      cp -PR $GDK_PIXBUF_DIR/.install_pkg/usr/lib/gdk-pixbuf-2.0 $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $GDK_PIXBUF_DIR/.install_pkg/usr/lib/libgdk_pixbuf-2.0.so.0.2800.2 $ADDON_BUILD/$PKG_ADDON_ID/lib/libgdk_pixbuf-2.0.so.0
      cp -P $CAIRO_DIR/.install_pkg/usr/lib/libcairo.so.2.11200.16 $ADDON_BUILD/$PKG_ADDON_ID/lib/libcairo.so.2
      cp -P $CAIRO_DIR/.install_pkg/usr/lib/libcairo-script-interpreter.so.2.11200.16 $ADDON_BUILD/$PKG_ADDON_ID/lib/libcairo-script-interpreter.so.2
      cp -PR $PANGO_DIR/.install_pkg/usr/lib/pango $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $PANGO_DIR/.install_pkg/usr/lib/libpango-1.0.so.0.3600.3 $ADDON_BUILD/$PKG_ADDON_ID/lib/libpango-1.0.so.0
      cp -P $PANGO_DIR/.install_pkg/usr/lib/libpangoft2-1.0.so.0.3600.3 $ADDON_BUILD/$PKG_ADDON_ID/lib/libpangoft2-1.0.so.0
      cp -P $PANGO_DIR/.install_pkg/usr/lib/libpangoxft-1.0.so.0.3600.3 $ADDON_BUILD/$PKG_ADDON_ID/lib/libpangoxft-1.0.so.0
      cp -P $PANGO_DIR/.install_pkg/usr/lib/libpangocairo-1.0.so.0.3600.3 $ADDON_BUILD/$PKG_ADDON_ID/lib/libpangocairo-1.0.so.0
      cp -PR $LIBRSVG_DIR/.install_pkg/usr/lib/gdk-pixbuf-2.0 $ADDON_BUILD/$PKG_ADDON_ID/lib
      cp -P $LIBRSVG_DIR/.install_pkg/usr/lib/librsvg-2.so.2.40.9 $ADDON_BUILD/$PKG_ADDON_ID/lib/librsvg-2.so.2

    if [ "$ENABLE_VDR_PLUGIN_WEATHERFORECAST" = yes ]; then
      VDR_PLUGIN_WEATHERFORECAST_DIR=$ROOT/$BUILD/vdr-plugin-weatherforecast-36f7ac9
      cp -PR $VDR_PLUGIN_WEATHERFORECAST_DIR/libvdr*.so.* $ADDON_BUILD/$PKG_ADDON_ID/lib/vdr
      mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/weatherforecast
        cp -PR $VDR_PLUGIN_WEATHERFORECAST_DIR/templates $ADDON_BUILD/$PKG_ADDON_ID/config/plugins/weatherforecast
      for fmo in `ls $VDR_PLUGIN_WEATHERFORECAST_DIR/po/*.mo`;do
        fname=`basename $fmo .mo`
        mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname
        mkdir -p $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES
          cp -p $fmo $ADDON_BUILD/$PKG_ADDON_ID/locale/$fname/LC_MESSAGES/vdr-weatherforecast.mo    
      done
    fi
  fi
}
