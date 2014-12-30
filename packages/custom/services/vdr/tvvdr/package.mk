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

PKG_NAME="tvvdr"
PKG_VERSION="4.0"
PKG_REV="6"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.openelec.tv"
PKG_URL=""
PKG_DEPENDS_TARGET="toolchain attr libcap vdr vdr-plugin-xvdr vdr-plugin-vnsiserver vdr-iptv vdr-wirbelscan vdr-wirbelscancontrol vdr-plugin-dvbapi vdr-plugin-streamdev vdr-control vdr-epgsearch vdr-plugin-xmltv2vdr vdr-plugin-eepg vdr-dummydevice vdr-satip vdr-femon vdr-filebrowser vdr-plugin-lcdproc vdr-plugin-sleeptimer vdr-systeminfo vdr-plugin-text2skin vdr-skin-nopacity vdr-plugin-tvguide vdr-plugin-tvscraper  vdr-plugin-softhddevice vdr-plugin-xineliboutput vdr-skin-flat vdr-skin-flatplus vdr-plugin-menuorg vdr-plugin-live"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
PKG_SHORTDESC="vdr: A powerful DVB TV application"
PKG_LONGDESC="This project describes how to build your own digital satellite receiver and video disk recorder. It is based mainly on the DVB-S digital satellite receiver card, which used to be available from Fujitsu Siemens and the driver software developed by the LinuxTV project."

PKG_AUTORECONF="no"
PKG_IS_ADDON="no"


make_target() {
  : # nothing to do here
}

makeinstall_target() {
  : # nothing to do here
}

post_install() {

  #VDR_DIR="$(get_build_dir vdr)"

  XINE_VERSION="2.5"

  VDR_DIR=$ROOT/$BUILD/vdr-2.1.6
  VDR_PLUGIN_LIVE_DIR=$ROOT/$BUILD/vdr-plugin-live-69f84f9
  VDR_PLUGIN_XVDR_DIR=$ROOT/$BUILD/vdr-plugin-xvdr-2ab5131
  VDR_PLUGIN_VNSISERVER_DIR=$ROOT/$BUILD/vdr-plugin-vnsiserver-3b2cf31
  VDR_PLUGIN_STREAMDEV_DIR=$ROOT/$BUILD/vdr-plugin-streamdev-657c8bc
  VDR_PLUGIN_XMLTV2VDR_DIR=$ROOT/$BUILD/vdr-plugin-xmltv2vdr-b48e0be
  VDR_PLUGIN_FEMON_DIR=$ROOT/$BUILD/vdr-femon-2.1.1
  VDR_PLUGIN_FILEBROWSER_DIR=$ROOT/$BUILD/vdr-filebrowser-0.2.1
  VDR_PLUGIN_IPTV_DIR=$ROOT/$BUILD/vdr-iptv-2.1.3
  VDR_PLUGIN_WIRBELSCAN_DIR=$ROOT/$BUILD/vdr-wirbelscan-0.0.7
  VDR_PLUGIN_WIRBELSCANCONTROL_DIR=$ROOT/$BUILD/vdr-wirbelscancontrol-0.0.2
  VDR_PLUGIN_DVBAPI_DIR=$ROOT/$BUILD/vdr-plugin-dvbapi-36a6b1d
  VDR_PLUGIN_EEPG_DIR=$ROOT/$BUILD/vdr-plugin-eepg-d7dc614
  VDR_PLUGIN_CONTROL_DIR=$ROOT/$BUILD/vdr-control-0.0.2a
  VDR_PLUGIN_EPGSEARCH_DIR=$ROOT/$BUILD/vdr-epgsearch-a908daa
  VDR_PLUGIN_DUMMYDEVICE_DIR=$ROOT/$BUILD/vdr-dummydevice-2.0.0
  VDR_PLUGIN_SATIP_DIR=$ROOT/$BUILD/vdr-satip-0.3.3
  VDR_PLUGIN_LCDPROC_DIR=$ROOT/$BUILD/vdr-plugin-lcdproc-0c54897
  VDR_PLUGIN_SLEEPTIMER_DIR=$ROOT/$BUILD/vdr-plugin-sleeptimer-b777501
  VDR_PLUGIN_SYSTEMINFO_DIR=$ROOT/$BUILD/vdr-systeminfo-0.1.3
  VDR_PLUGIN_TEXT2SKIN_DIR=$ROOT/$BUILD/vdr-plugin-text2skin-7bd88a0
  VDR_PLUGIN_SKINNOPACITY_DIR=$ROOT/$BUILD/vdr-skin-nopacity-f593ad5
  VDR_PLUGIN_SKINFLAT_DIR=$ROOT/$BUILD/vdr-skin-flat-1040bb7
  VDR_PLUGIN_SKINFLATPLUS_DIR=$ROOT/$BUILD/vdr-skin-flatplus-ec04db6
  VDR_PLUGIN_MENUORG_DIR=$ROOT/$BUILD/vdr-plugin-menuorg-e56415d
  VDR_PLUGIN_TVGUIDE_DIR=$ROOT/$BUILD/vdr-plugin-tvguide-8287bb5
  VDR_PLUGIN_TVSCRAPER_DIR=$ROOT/$BUILD/vdr-plugin-tvscraper-9a000ca
  VDR_PLUGIN_SOFTHDDEVICE_DIR=$ROOT/$BUILD/vdr-plugin-softhddevice-9f134c1
  VDR_PLUGIN_XINEOUTPUT_DIR=$ROOT/$BUILD/vdr-plugin-xineliboutput-40dcf2f

  TNTNET_DIR=$ROOT/$BUILD/tntnet-2.2

  # bin and libs

  mkdir -p $INSTALL/usr/bin
    cp -P $VDR_DIR/vdr $INSTALL/usr/bin/vdr.bin
    cp -P $VDR_DIR/vdr $INSTALL/usr/bin/svdrpsend
    cp -P $VDR_PLUGIN_XMLTV2VDR_DIR/dist/epgdata2xmltv/epgdata2xmltv $INSTALL/usr/bin
    cp -P $VDR_PLUGIN_XINEOUTPUT_DIR/vdr-fbfe $INSTALL/usr/bin
    cp -P $VDR_PLUGIN_XINEOUTPUT_DIR/vdr-sxfe $INSTALL/usr/bin
    cp -P $PKG_DIR/scripts/* $INSTALL/usr/bin

  mkdir -p $INSTALL/usr/lib
    cp -PL $TNTNET_DIR/.install_pkg/usr/lib/libtntnet.so.11 $INSTALL/usr/lib

  # plugins libs

  mkdir -p $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_XVDR_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_VNSISERVER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_IPTV_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_WIRBELSCAN_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_WIRBELSCANCONTROL_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_DVBAPI_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_EEPG_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/server/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/client/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_LIVE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_CONTROL_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_EPGSEARCH_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_XMLTV2VDR_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_DUMMYDEVICE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SATIP_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_FEMON_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_LCDPROC_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SLEEPTIMER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SYSTEMINFO_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_TEXT2SKIN_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_TVGUIDE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_TVSCRAPER_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SOFTHDDEVICE_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/libvdr*.so.2.1.6 $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/libxineliboutput*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_MENUORG_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SKINFLAT_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/libvdr*.so.* $INSTALL/usr/lib/vdr

  #libxine2-xvdr

  mkdir -p $INSTALL/usr/lib/xine/plugins/$XINE_VERSION
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/xineplug_inp_xvdr.so $INSTALL/usr/lib/xine/plugins/$XINE_VERSION
  mkdir -p $INSTALL/usr/lib/xine/plugins/$XINE_VERSION/post
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/xineplug_post_*.so $INSTALL/usr/lib/xine/plugins/$XINE_VERSION/post

  #config

  mkdir -p $INSTALL/usr/config/vdr
    cp $VDR_DIR/scr.conf $INSTALL/usr/config/vdr
    cp $VDR_DIR/sources.conf $INSTALL/usr/config/vdr
    cp $VDR_DIR/svdrphosts.conf $INSTALL/usr/config/vdr
    echo '0.0.0.0/0' >> $INSTALL/usr/config/vdr/svdrphosts.conf

  mkdir -p $INSTALL/usr/config/vdr/plugins
  mkdir -p $INSTALL/usr/config/vdr/plugins/epgsearch
    cp -PR $VDR_PLUGIN_EPGSEARCH_DIR/conf/* $INSTALL/usr/config/vdr/plugins/epgsearch

  mkdir -p $INSTALL/usr/config/vdr/plugins/live
    cp -PR $VDR_PLUGIN_LIVE_DIR/live/* $INSTALL/usr/config/vdr/plugins/live

  mkdir -p $INSTALL/usr/config/vdr/epgsources/
    cp $VDR_PLUGIN_XMLTV2VDR_DIR/dist/epgdata2xmltv/epgdata2xmltv.dist $INSTALL/usr/config/vdr/epgsources/epgdata2xmltv

  mkdir -p $INSTALL/usr/config/vdr/plugins/eepg

  mkdir -p $INSTALL/usr/config/vdr/plugins/xvdr
    cp -PR $VDR_PLUGIN_XVDR_DIR/xvdr/allowed_hosts.conf $INSTALL/usr/config/vdr/plugins/xvdr
    cp -PR $VDR_PLUGIN_XVDR_DIR/xvdr/xvdr.conf $INSTALL/usr/config/vdr/plugins/xvdr

  mkdir -p $INSTALL/usr/config/vdr/plugins/vnsiserver
    cp -PR $VDR_PLUGIN_VNSISERVER_DIR/vnsiserver/allowed_hosts.conf $INSTALL/usr/config/vdr/plugins/vnsiserver

  mkdir -p $INSTALL/usr/config/vdr/plugins/streamdev-server
    cp -PR $VDR_PLUGIN_STREAMDEV_DIR/streamdev-server/streamdevhosts.conf $INSTALL/usr/config/vdr/plugins/streamdev-server

  mkdir -p $INSTALL/usr/config/vdr/plugins/filebrowser
    cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/examples/filebrowser/*  $INSTALL/usr/config/vdr/plugins/filebrowser

  mkdir -p $INSTALL/usr/config/vdr/themes
    cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/themes/* $INSTALL/usr/config/vdr/themes

  mkdir -p $INSTALL/usr/config/vdr/plugins/skinnopacity/themeconfigs
    cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/conf/*.conf $INSTALL/usr/config/vdr/plugins/skinnopacity/themeconfigs

  mkdir -p $INSTALL/usr/config/vdr/plugins/skinnopacity
    cp -PR $VDR_PLUGIN_SKINNOPACITY_DIR/icons $INSTALL/usr/config/vdr/plugins/skinnopacity

  mkdir -p $INSTALL/usr/config/vdr/themes
    cp -PR $VDR_PLUGIN_SKINFLAT_DIR/themes/* $INSTALL/usr/config/vdr/themes

  mkdir -p $INSTALL/usr/config/vdr/plugins/skinflat
    cp -PR $VDR_PLUGIN_SKINFLAT_DIR/icons $INSTALL/usr/config/vdr/plugins/skinflat

  mkdir -p $INSTALL/usr/config/vdr/themes
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/themes/* $INSTALL/usr/config/vdr/themes

  mkdir -p $INSTALL/usr/config/vdr/plugins/skinflatplus
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/icons $INSTALL/usr/config/vdr/plugins/skinflatplus
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/decors $INSTALL/usr/config/vdr/plugins/skinflatplus
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/configs $INSTALL/usr/config/vdr/plugins/skinflatplus
    cp -PR $VDR_PLUGIN_SKINFLATPLUS_DIR/widgets $INSTALL/usr/config/vdr/plugins/skinflatplus

  mkdir -p $INSTALL/usr/config/vdr/plugins/systeminfo
    cp -PR $VDR_PLUGIN_SYSTEMINFO_DIR/scripts/* $INSTALL/usr/config/vdr/plugins/systeminfo

  mkdir -p $INSTALL/usr/config/vdr/themes
    cp -PR $VDR_PLUGIN_TVGUIDE_DIR/themes/* $INSTALL/usr/config/vdr/themes

  mkdir -p $INSTALL/usr/config/vdr/plugins/tvguide
    cp -PR $VDR_PLUGIN_TVGUIDE_DIR/icons $INSTALL/usr/config/vdr/plugins/tvguide

  mkdir -p $INSTALL/usr/config/vdr/plugins/tvscraper
    cp -PR $VDR_PLUGIN_TVSCRAPER_DIR/conf/* $INSTALL/usr/config/vdr/plugins/tvscraper

  mkdir -p $INSTALL/usr/config/vdr/plugins/xineliboutput
    cp -PR $VDR_PLUGIN_XINEOUTPUT_DIR/examples/* $INSTALL/usr/config/vdr/plugins/xineliboutput

  mkdir -p $INSTALL/usr/config/xine
    cp -PR $PKG_DIR/config/xine/* $INSTALL/usr/config/xine

  #def config

  mkdir -p $INSTALL/usr/config/vdr
    cp -PR $PKG_DIR/config/vdr/* $INSTALL/usr/config/vdr

  #locale

  mkdir -p $INSTALL/usr/share/locale

  for fmo in `ls $VDR_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr.mo    
  done

  for fmo in `ls $VDR_PLUGIN_DVBAPI_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-dvbapi.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_EPGSEARCH_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-epgsearch.mo    
  done

  #for fmo in `ls $VDR_PLUGIN_EEPG_DIR/po/*.mo`;do
    #fname=`basename $fmo .mo`
    #mkdir -p $INSTALL/usr/share/locale/$fname
    #mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      #cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-eepg.mo    
  #done
  
  for fmo in `ls $VDR_PLUGIN_FEMON_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-femon.mo    
  done
  
  cp -PR $VDR_PLUGIN_FILEBROWSER_DIR/locale/* $INSTALL/usr/share/locale
  
   for fmo in `ls $VDR_PLUGIN_IPTV_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-iptv.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_LCDPROC_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-lcdproc.mo    
  done
  
  cp -PR $VDR_PLUGIN_LIVE_DIR/locale/* $INSTALL/usr/share/locale
  
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
  
  cp -PR $VDR_PLUGIN_XMLTV2VDR_DIR/locale/* $INSTALL/usr/share/locale
  
  for fmo in `ls $VDR_PLUGIN_XVDR_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-xvdr.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_SATIP_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-satip.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_SKINNOPACITY_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-skinnopacity.mo    
  done

  for fmo in `ls $VDR_PLUGIN_SKINFLAT_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-skinflat.mo    
  done

  for fmo in `ls $VDR_PLUGIN_SKINFLATPLUS_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-skinflatplus.mo    
  done

  for fmo in `ls $VDR_PLUGIN_MENUORG_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-menuorg.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_SLEEPTIMER_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-sleeptimer.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_SOFTHDDEVICE_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-softhddevice.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_SYSTEMINFO_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-systeminfo.mo    
  done
  
  cp -PR $VDR_PLUGIN_TEXT2SKIN_DIR/locale/* $INSTALL/usr/share/locale
  
  for fmo in `ls $VDR_PLUGIN_TVGUIDE_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-tvguide.mo    
  done
  
  for fmo in `ls $VDR_PLUGIN_TVSCRAPER_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-tvscraper.mo    
  done
  
  cp -PR $VDR_PLUGIN_WIRBELSCAN_DIR/locale/* $INSTALL/usr/share/locale
  cp -PR $VDR_PLUGIN_WIRBELSCANCONTROL_DIR/locale/* $INSTALL/usr/share/locale
  
  for fmo in `ls $VDR_PLUGIN_XINEOUTPUT_DIR/po/*.mo`;do
    fname=`basename $fmo .mo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
      cp -p $fmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vdr-xineliboutput.mo    
  done
	
  enable_service vdr.service
}
