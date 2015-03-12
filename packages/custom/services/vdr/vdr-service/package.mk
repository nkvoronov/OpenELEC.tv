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

PKG_NAME="vdr-service"
PKG_VERSION="2.2.0"
PKG_REV="10"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.openelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain attr libcap vdr"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="vdr: A powerful DVB TV application"
PKG_LONGDESC="This project describes how to build your own digital satellite receiver and video disk recorder. It is based mainly on the DVB-S digital satellite receiver card, which used to be available from Fujitsu Siemens and the driver software developed by the LinuxTV project."

PKG_AUTORECONF="no"
PKG_IS_ADDON="no"

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

make_target() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

post_install() {

  VDR_DIR=$ROOT/$BUILD/vdr-9ab55b4
  API_VERSION="2.2.0"

  mkdir -p $INSTALL/usr/bin
    cp -P $VDR_DIR/vdr $INSTALL/usr/bin/vdr.bin
    cp -P $VDR_DIR/vdr $INSTALL/usr/bin/svdrpsend
    cp -P $PKG_DIR/scripts/* $INSTALL/usr/bin

  mkdir -p $INSTALL/usr/config/vdr
    cp $VDR_DIR/scr.conf $INSTALL/usr/config/vdr
    cp $VDR_DIR/sources.conf $INSTALL/usr/config/vdr
    cp $VDR_DIR/svdrphosts.conf $INSTALL/usr/config/vdr
    echo '0.0.0.0/0' >> $INSTALL/usr/config/vdr/svdrphosts.conf
    cp -PR $PKG_DIR/config/vdr/* $INSTALL/usr/config/vdr

  mkdir -p $INSTALL/usr/config/vdr/plugins
  mkdir -p $INSTALL/usr/share/locale
  mkdir -p $INSTALL/usr/lib
  mkdir -p $INSTALL/usr/lib/vdr

  for fmo in `ls $VDR_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr.mo    
  done

  if [ "$ENABLE_VDR_CONTROL" = yes ]; then
    VDR_PLUGIN_CONTROL_DIR=$ROOT/$BUILD/vdr-control-0.0.2a
    cp -PR $VDR_PLUGIN_CONTROL_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    #for fmo in `ls $VDR_PLUGIN_CONTRIL_DIR/po/*.mo`;do
      #fname=`basename $fmo .mo`
      #mkdir -p $INSTALL/usr/share/locale/$fname
      #mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        #cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-control.mo    
    #done
  fi

  if [ "$ENABLE_VDR_DUMMYDEVICE" = yes ]; then
    VDR_PLUGIN_DUMMYDEVICE_DIR=$ROOT/$BUILD/vdr-dummydevice-2.0.0
    cp -PR $VDR_PLUGIN_DUMMYDEVICE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
  fi

  if [ "$ENABLE_VDR_EPGSEARCH" = yes ]; then
    VDR_PLUGIN_EPGSEARCH_DIR=$ROOT/$BUILD/vdr-epgsearch-a908daa
    cp -PR $VDR_PLUGIN_EPGSEARCH_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/epgsearch
      cp -PR $VDR_PLUGIN_EPGSEARCH_DIR/conf/* $INSTALL/usr/config/vdr/plugins/epgsearch
    for fmo in `ls $VDR_PLUGIN_EPGSEARCH_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-epgsearch.mo    
    done
  fi

  if [ "$ENABLE_VDR_IPTV" = yes ]; then
    VDR_PLUGIN_IPTV_DIR=$ROOT/$BUILD/vdr-iptv-2.1.3
    cp -PR $VDR_PLUGIN_IPTV_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/iptv
      cp -PR $VDR_PLUGIN_IPTV_DIR/iptv/* $INSTALL/usr/config/vdr/plugins/iptv
    for fmo in `ls $VDR_PLUGIN_IPTV_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-iptv.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_DVBAPI" = yes ]; then
    VDR_PLUGIN_DVBAPI_DIR=$ROOT/$BUILD/vdr-plugin-dvbapi-fd4fcd6
    cp -PR $VDR_PLUGIN_DVBAPI_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    for fmo in `ls $VDR_PLUGIN_DVBAPI_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-dvbapi.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_EEPG" = yes ]; then
    VDR_PLUGIN_EEPG_DIR=$ROOT/$BUILD/vdr-plugin-eepg-9cd9a75
    cp -PR $VDR_PLUGIN_EEPG_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    #mkdir -p $INSTALL/usr/config/vdr/plugins/eepg
    #for fmo in `ls $VDR_PLUGIN_EEPG_DIR/po/*.mo`;do
      #fname=`basename $fmo .mo`
      #mkdir -p $INSTALL/usr/share/locale/$fname
      #mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        #cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-eepg.mo    
    #done
  fi

  if [ "$ENABLE_VDR_PLUGIN_EPGFIXER" = yes ]; then
    VDR_PLUGIN_EPGFIXER_DIR=$ROOT/$BUILD/vdr-plugin-epgfixer-1ad4aaf
    cp -PR $VDR_PLUGIN_EPGFIXER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/epgfixer
      cp -PR $VDR_PLUGIN_EPGFIXER_DIR/epgfixer/* $INSTALL/usr/config/vdr/plugins/epgfixer
    for fmo in `ls $VDR_PLUGIN_EPGFIXER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-epgfixer.mo    
    done
  fi

  if [ "$ENABLE_VDR_LIVE" = yes ]; then
    VDR_PLUGIN_LIVE_DIR=$ROOT/$BUILD/vdr-live-6ea279a
    cp -PR $VDR_PLUGIN_LIVE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/live
      cp -PR $VDR_PLUGIN_LIVE_DIR/live/* $INSTALL/usr/config/vdr/plugins/live
    for fmo in `ls $VDR_PLUGIN_LIVE_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-live.mo    
    done   
  fi

  if [ "$ENABLE_VDR_PLUGIN_RESTFULAPI" = yes ]; then
    VDR_PLUGIN_RESTFULAPI_DIR=$ROOT/$BUILD/vdr-plugin-restfulapi-5d2eb27
    cp -PR $VDR_PLUGIN_RESTFULAPI_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/restfulapi
    mkdir -p $INSTALL/usr/config/vdr/plugins/restfulapi/webapp
      cp -PR $VDR_PLUGIN_RESTFULAPI_DIR/web/* $INSTALL/usr/config/vdr/plugins/restfulapi
      cp -PR $VDR_PLUGIN_RESTFULAPI_DIR/API.html $INSTALL/usr/config/vdr/plugins/restfulapi
    for fmo in `ls $VDR_PLUGIN_RESTFULAPI_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-restfulapi.mo    
    done 
  fi

  if [ "$ENABLE_VDR_PLUGIN_STREAMDEV" = yes ]; then
    VDR_PLUGIN_STREAMDEV_DIR=$ROOT/$BUILD/vdr-plugin-streamdev-84c6f6b
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/server/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/client/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/streamdev-server
      cp -PR $VDR_PLUGIN_STREAMDEV_DIR/streamdev-server/streamdevhosts.conf $INSTALL/usr/config/vdr/plugins/streamdev-server
    for fmo in `ls $VDR_PLUGIN_STREAMDEV_DIR/server/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-streamdev-server.mo    
    done
    for fmo in `ls $VDR_PLUGIN_STREAMDEV_DIR/client/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-streamdev-client.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_VNSISERVER" = yes ]; then
    VDR_PLUGIN_VNSISERVER_DIR=$ROOT/$BUILD/vdr-plugin-vnsiserver-9529e6d
    cp -PR $VDR_PLUGIN_VNSISERVER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/vnsiserver
      cp -PR $VDR_PLUGIN_VNSISERVER_DIR/vnsiserver/allowed_hosts.conf $INSTALL/usr/config/vdr/plugins/vnsiserver
  fi

  if [ "$ENABLE_VDR_PLUGIN_XMLTV2VDR" = yes ]; then
    VDR_PLUGIN_XMLTV2VDR_DIR=$ROOT/$BUILD/vdr-plugin-xmltv2vdr-b48e0be
    cp -P $VDR_PLUGIN_XMLTV2VDR_DIR/dist/epgdata2xmltv/epgdata2xmltv $INSTALL/usr/bin
    cp -PR $VDR_PLUGIN_XMLTV2VDR_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/epgsources/
      cp $VDR_PLUGIN_XMLTV2VDR_DIR/dist/epgdata2xmltv/epgdata2xmltv.dist $INSTALL/usr/config/vdr/epgsources/epgdata2xmltv
    cp -PR $VDR_PLUGIN_XMLTV2VDR_DIR/locale/* $INSTALL/usr/share/locale
  fi

  if [ "$ENABLE_VDR_PLUGIN_XVDR" = yes ]; then 
    VDR_PLUGIN_XVDR_DIR=$ROOT/$BUILD/vdr-plugin-xvdr-b300fc3
    cp -PR $VDR_PLUGIN_XVDR_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/xvdr
      cp -PR $VDR_PLUGIN_XVDR_DIR/xvdr/*.conf $INSTALL/usr/config/vdr/plugins/xvdr
    for fmo in `ls $VDR_PLUGIN_XVDR_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-xvdr.mo    
    done
  fi

  if [ "$ENABLE_VDR_SATIP" = yes ]; then
    VDR_PLUGIN_SATIP_DIR=$ROOT/$BUILD/vdr-satip-1.0.2 
    cp -PR $VDR_PLUGIN_SATIP_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    for fmo in `ls $VDR_PLUGIN_SATIP_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-satip.mo    
    done
  fi

  if [ "$ENABLE_VDR_WIRBELSCAN" = yes ]; then
    VDR_PLUGIN_WIRBELSCAN_DIR=$ROOT/$BUILD/vdr-wirbelscan-0.0.9
    VDR_PLUGIN_WIRBELSCANCONTROL_DIR=$ROOT/$BUILD/vdr-wirbelscancontrol-0.0.2
    cp -PR $VDR_PLUGIN_WIRBELSCAN_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_WIRBELSCANCONTROL_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr 
    cp -PR $VDR_PLUGIN_WIRBELSCAN_DIR/locale/* $INSTALL/usr/share/locale
    cp -PR $VDR_PLUGIN_WIRBELSCANCONTROL_DIR/locale/* $INSTALL/usr/share/locale
  fi

  if [ "$ENABLE_VDR_FEMON" = yes ]; then
    VDR_PLUGIN_FEMON_DIR=$ROOT/$BUILD/vdr-femon-2.1.1 
    cp -PR $VDR_PLUGIN_FEMON_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    for fmo in `ls $VDR_PLUGIN_FEMON_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-femon.mo    
    done
  fi

  if [ "$ENABLE_VDR_FILEBROWSER" = yes ]; then
    VDR_PLUGIN_FILEBROWSER_DIR=$ROOT/$BUILD/vdr-filebrowser-0.2.1  
    cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/filebrowser
      cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/examples/filebrowser/*  $INSTALL/usr/config/vdr/plugins/filebrowser
    cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/locale/* $INSTALL/usr/share/locale
  fi

  if [ "$ENABLE_VDR_PLUGIN_LCDPROC" = yes ]; then
    VDR_PLUGIN_LCDPROC_DIR=$ROOT/$BUILD/vdr-plugin-lcdproc-0c54897
    cp -PR $VDR_PLUGIN_LCDPROC_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    for fmo in `ls $VDR_PLUGIN_LCDPROC_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-lcdproc.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_MENUORG" = yes ]; then
    VDR_PLUGIN_MENUORG_DIR=$ROOT/$BUILD/vdr-plugin-menuorg-cec1981
    cp -PR $VDR_PLUGIN_MENUORG_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/menuorg
      cp -PR $VDR_PLUGIN_MENUORG_DIR/menuorg.*  $INSTALL/usr/config/vdr/plugins/menuorg
    for fmo in `ls $VDR_PLUGIN_MENUORG_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-menuorg.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_SLEEPTIMER" = yes ]; then
    VDR_PLUGIN_SLEEPTIMER_DIR=$ROOT/$BUILD/vdr-plugin-sleeptimer-b777501
    cp -PR $VDR_PLUGIN_SLEEPTIMER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    for fmo in `ls $VDR_PLUGIN_SLEEPTIMER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-sleeptimer.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_SOFTHDDEVICE" = yes ]; then
    VDR_PLUGIN_SOFTHDDEVICE_DIR=$ROOT/$BUILD/vdr-plugin-softhddevice-a1939eb
    cp -PR $VDR_PLUGIN_SOFTHDDEVICE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    for fmo in `ls $VDR_PLUGIN_SOFTHDDEVICE_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-softhddevice.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_TEXT2SKIN" = yes ]; then
    VDR_PLUGIN_TEXT2SKIN_DIR=$ROOT/$BUILD/vdr-plugin-text2skin-7bd88a0 
    cp -PR $VDR_PLUGIN_TEXT2SKIN_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_TEXT2SKIN_DIR/locale/* $INSTALL/usr/share/locale  
  fi

  if [ "$ENABLE_VDR_PLUGIN_TVGUIDE" = yes ]; then
    VDR_PLUGIN_TVGUIDE_DIR=$ROOT/$BUILD/vdr-plugin-tvguide-8287bb5  
    cp -PR $VDR_PLUGIN_TVGUIDE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/themes
      cp -PR $VDR_PLUGIN_TVGUIDE_DIR/themes/* $INSTALL/usr/config/vdr/themes
    mkdir -p $INSTALL/usr/config/vdr/plugins/tvguide
      cp -PR $VDR_PLUGIN_TVGUIDE_DIR/icons $INSTALL/usr/config/vdr/plugins/tvguide
    for fmo in `ls $VDR_PLUGIN_TVGUIDE_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-tvguide.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_TVSCRAPER" = yes ]; then
    VDR_PLUGIN_TVSCRAPER_DIR=$ROOT/$BUILD/vdr-plugin-tvscraper-9a000ca
    cp -PR $VDR_PLUGIN_TVSCRAPER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/tvscraper
      cp -PR $VDR_PLUGIN_TVSCRAPER_DIR/conf/* $INSTALL/usr/config/vdr/plugins/tvscraper
    for fmo in `ls $VDR_PLUGIN_TVSCRAPER_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-tvscraper.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_UPNP" = yes ]; then
    VDR_PLUGIN_UPNP_DIR=$ROOT/$BUILD/vdr-plugin-upnp-11a035a
    cp -P $VDR_PLUGIN_UPNP_DIR/libvdr-upnp.so $INSTALL/usr/lib/vdr/libvdr-upnp.so.$API_VERSION
    cp -PR $VDR_PLUGIN_UPNP_DIR/libupnp*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/plugins/upnp
      cp -PR $VDR_PLUGIN_UPNP_DIR/httpdocs $INSTALL/usr/config/vdr/plugins/upnp
    for fmo in `ls $VDR_PLUGIN_UPNP_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-upnp.mo    
    done
  fi

  if [ "$ENABLE_VDR_PLUGIN_XINELIBOUTPUT" = yes ]; then
    VDR_PLUGIN_XINEOUTPUT_DIR=$ROOT/$BUILD/vdr-plugin-xineliboutput-fd21e7a
    XINE_VERSION="2.5"
    cp -P $VDR_PLUGIN_XINEOUTPUT_DIR/vdr-fbfe $INSTALL/usr/bin
    cp -P $VDR_PLUGIN_XINEOUTPUT_DIR/vdr-sxfe $INSTALL/usr/bin
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/libvdr*.so.$API_VERSION $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/libxineliboutput*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/lib/xine/plugins/$XINE_VERSION
      cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/xineplug_inp_xvdr.so $INSTALL/usr/lib/xine/plugins/$XINE_VERSION
    mkdir -p $INSTALL/usr/lib/xine/plugins/$XINE_VERSION/post
      cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/xineplug_post_*.so $INSTALL/usr/lib/xine/plugins/$XINE_VERSION/post
    mkdir -p $INSTALL/usr/config/vdr/plugins/xineliboutput
      cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/examples/* $INSTALL/usr/config/vdr/plugins/xineliboutput
    mkdir -p $INSTALL/usr/config/xine
      cp -PR $PKG_DIR/config/xine/* $INSTALL/usr/config/xine
    for fmo in `ls $VDR_PLUGIN_XINEOUTPUT_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-xineliboutput.mo    
    done
  fi

  if [ "$ENABLE_VDR_SKIN_FLAT" = yes ]; then
    VDR_PLUGIN_SKINFLAT_DIR=$ROOT/$BUILD/vdr-skin-flat-1040bb7 
    cp -PR $VDR_PLUGIN_SKINFLAT_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/themes
      cp -PR $VDR_PLUGIN_SKINFLAT_DIR/themes/* $INSTALL/usr/config/vdr/themes
    mkdir -p $INSTALL/usr/config/vdr/plugins/skinflat
      cp -PR $VDR_PLUGIN_SKINFLAT_DIR/icons $INSTALL/usr/config/vdr/plugins/skinflat
    for fmo in `ls $VDR_PLUGIN_SKINFLAT_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-skinflat.mo    
    done
  fi

  if [ "$ENABLE_VDR_SKIN_FLATPLUS" = yes ]; then
    VDR_PLUGIN_SKINFLATPLUS_DIR=$ROOT/$BUILD/vdr-skin-flatplus-6cfbe89
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/themes
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/themes/* $INSTALL/usr/config/vdr/themes
    mkdir -p $INSTALL/usr/config/vdr/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/icons $INSTALL/usr/config/vdr/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/decors $INSTALL/usr/config/vdr/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/configs $INSTALL/usr/config/vdr/plugins/skinflatplus
      cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/widgets $INSTALL/usr/config/vdr/plugins/skinflatplus
    for fmo in `ls $VDR_PLUGIN_SKINFLATPLUS_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-skinflatplus.mo    
    done
  fi

  if [ "$ENABLE_VDR_SKIN_NOPACITY" = yes ]; then
    VDR_PLUGIN_SKINNOPACITY_DIR=$ROOT/$BUILD/vdr-skin-nopacity-f593ad5
    cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    mkdir -p $INSTALL/usr/config/vdr/themes
      cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/themes/* $INSTALL/usr/config/vdr/themes
    mkdir -p $INSTALL/usr/config/vdr/plugins/skinnopacity/themeconfigs
      cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/conf/*.conf $INSTALL/usr/config/vdr/plugins/skinnopacity/themeconfigs
    mkdir -p $INSTALL/usr/config/vdr/plugins/skinnopacity
      cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/icons $INSTALL/usr/config/vdr/plugins/skinnopacity
    for fmo in `ls $VDR_PLUGIN_SKINNOPACITY_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-skinnopacity.mo    
    done
  fi

  if [ "$ENABLE_VDR_SYSTEMINFO" = yes ]; then
    VDR_PLUGIN_SYSTEMINFO_DIR=$ROOT/$BUILD/vdr-systeminfo-0.1.3 
    cp -PR $VDR_PLUGIN_SYSTEMINFO_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    #mkdir -p $INSTALL/usr/config/vdr/plugins/systeminfo
      #cp -PR $VDR_PLUGIN_SYSTEMINFO_DIR/scripts/* $INSTALL/usr/config/vdr/plugins/systeminfo
    for fmo in `ls $VDR_PLUGIN_SYSTEMINFO_DIR/po/*.mo`;do
      fname=`basename $fmo .mo`
      mkdir -p $INSTALL/usr/share/locale/$fname
      mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
        cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-systeminfo.mo    
    done
  fi

  enable_service vdr.service
}
