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

PKG_NAME="vlc"
PKG_VERSION="2.2.1"
PKG_REV="22"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.videolan.org"
PKG_URL="http://download.videolan.org/pub/videolan/vlc/$PKG_VERSION/vlc-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libass librsvg liblivemedia libbluray samba dbus libdvbpsi ffmpeg flac xcb-util-keysyms alsa-lib libsamplerate \
libupnp libmtp libmad faad2 libmodplug libmpeg2 fluidsynth dcadec taglib-vlc libva libvdpau zvbi chromaprint libdca fdk-aac libvpx x264 opus lirc libavc1394 \
libdc1394 libdvdnav a52dec libssh2 libmatroska libshout ncursesw5 gnutls SDL_image qt4"
PKG_PRIORITY="optional"
PKG_SECTION="custom/multimedia"
PKG_SHORTDESC="VideoLAN multimedia player and streamer"
PKG_LONGDESC="VLC is the VideoLAN project's media player. It plays MPEG, MPEG2, MPEG4, DivX, MOV, WMV, QuickTime, mp3, Ogg/Vorbis files, DVDs, VCDs, and multimedia streams from various network sources."

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_MAIN_OPTS="--enable-silent-rules \
	--disable-dependency-tracking \
	--without-contrib \
	--enable-shared \
	--disable-static \
	--without-pic \
	--enable-fast-install \
	--without-gnu-ld \
	--disable-nls \
	--disable-rpath \
	--enable-dbus"

PKG_CONFIGURE_OPTIMIZATION_OPTS="--disable-debug \
	--disable-gprof \
	--disable-cprof \
	--disable-coverage \
	--enable-optimizations \
	--disable-mmx \
	--disable-sse \
	--disable-neon \
	--disable-altivec \
	--enable-optimize-memory \
	--enable-run-as-root \
	--enable-sout \
	--disable-lua \
	--enable-httpd \
	--enable-vlm \
	--enable-addonmanagermodules"

PKG_CONFIGURE_INPUT_PLUGINS_OPTS="--enable-live555 \
	--enable-dc1394 \
	--enable-dv1394 \
	--enable-linsys \
	--enable-dvdread \
	--enable-dvdnav \
	--enable-bluray \
	--disable-opencv \
	--enable-smbclient \
	--enable-sftp \
	--enable-v4l2 \
	--disable-decklink \
	--disable-gnomevfs \
	--disable-vcdx \
	--disable-vcd \
	--disable-libcddb \
	--enable-screen \
	--disable-vnc \
	--disable-freerdp \
	--disable-realrtsp \
	--disable-macosx-eyetv \
	--disable-macosx-qtkit \
	--disable-macosx-avfoundation \
	--disable-asdcp"

PKG_CONFIGURE_MUX_DEMUX_PLUGINS_OPTS="--enable-dvbpsi \
	--disable-gme \
	--disable-sid \
	--enable-ogg \
	--enable-mux_ogg \
	--enable-shout \
	--enable-mkv \
	--enable-mod \
	--disable-mpc"

PKG_CONFIGURE_CODEC_PLUGINS_OPTS="--disable-wma-fixed \
	--disable-shine \
	--disable-omxil \
	--disable-omxil-vout \
	--disable-rpi-omxil \
	--disable-mmal-codec \
	--disable-crystalhd \
	--enable-mad \
	--disable-merge-ffmpeg \
	--disable-gst-decode \
	--enable-avcodec \
	--enable-libva \
	--disable-dxva2 \
	--disable-vda \
	--enable-avformat \
	--enable-swscale \
	--enable-postproc \
	--enable-faad \
	--enable-vpx \
	--disable-twolame \
	--enable-fdkaac \
	--disable-quicktime \
	--enable-a52 \
	--enable-dca \
	--enable-flac \
	--enable-libmpeg2 \
	--enable-vorbis \
	--disable-tremor \
	--enable-speex \
	--enable-opus \
	--enable-theora \
	--disable-schroedinger \
	--enable-png \
	--enable-jpeg \
	--disable-x262 \
	--disable-x265 \
	--disable-x26410b \
	--enable-x264 \
	--disable-mfx \
	--enable-fluidsynth \
	--enable-zvbi \
	--disable-telx \
	--enable-libass \
	--disable-kate \
	--disable-tiger"

PKG_CONFIGURE_VIDEO_PLUGINS_OPTS="--disable-gles2 \
	--disable-gles1 \
	--with-x \
	--enable-xcb \
	--enable-xvideo \
	--enable-vdpau \
	--enable-sdl \
	--enable-sdl-image \
	--enable-freetype \
	--enable-fribidi \
	--enable-fontconfig \
	--disable-macosx-quartztext \
	--enable-svg \
	--disable-svgdec \
	--disable-directfb \
	--disable-aa \
	--disable-caca \
	--disable-kva \
	--disable-mmal-vout"

PKG_CONFIGURE_AUDIO_PLUGINS_OPTS="--disable-pulse \
	--enable-alsa \
	--disable-oss \
	--disable-sndio \
	--disable-wasapi \
	--disable-audioqueue \
	--disable-jack \
	--disable-opensles \
	--enable-samplerate \
	--disable-kai \
	--enable-chromaprint"

PKG_CONFIGURE_INTERFACE_PLUGINS_OPTS="--enable-qt \
	--disable-skins2 \
	--disable-libtar \
	--disable-macosx \
	--disable-minimal-macosx \
	--disable-macosx-dialog-provider \
	--enable-ncurses \
	--enable-lirc"

PKG_CONFIGURE_VISUALISATIONS_OPTS="--disable-goom \
	--disable-projectm \
	--disable-vsxu \
	--enable-atmo \
	--enable-glspectrum"

PKG_CONFIGURE_SERVICE_DISCOVERY_PLUGINS_OPTS="--enable-bonjour \
	--enable-udev \
	--enable-mtp \
	--enable-upnp"

PKG_CONFIGURE_MISC_OPTIONS_OPTS="--enable-libxml2 \
	--enable-libgcrypt \
	--enable-gnutls \
	--enable-taglib \
	--disable-update-check \
	--disable-growl \
	--disable-notify"

PKG_CONFIGURE_COMPONENTS_OPTS="--enable-vlc \
	--disable-macosx-vlc-app"


PKG_CONFIGURE_OPTS_TARGET="$PKG_CONFIGURE_MAIN_OPT \
	$PKG_CONFIGURE_OPTIMIZATION_OPTS \
	SPKG_CONFIGURE_INPUT_PLUGINS_OPTS \
	$PKG_CONFIGURE_MUX_DEMUX_PLUGINS_OPTS \
	$PKG_CONFIGURE_CODEC_PLUGINS_OPTS \
	$PKG_CONFIGURE_VIDEO_PLUGINS_OPTS \
	$PKG_CONFIGURE_AUDIO_PLUGINS_OPTS \
	$PKG_CONFIGURE_INTERFACE_PLUGINS_OPTS \
	$PKG_CONFIGURE_VISUALISATIONS_OPTS \
	$PKG_CONFIGURE_SERVICE_DISCOVERY_PLUGINS_OPTS \
	$PKG_CONFIGURE_MISC_OPTIONS_OPTS \
	$PKG_CONFIGURE_COMPONENTS_OPTS"

pre_configure_target() {
  PKG_CONFIG_PATH="$(get_build_dir taglib-vlc)/.install_tmp/usr/lib/pkgconfig:$(get_build_dir ncursesw5)/.install_tmp/usr/lib/pkgconfig"
  CFLAGS="$CFLAGS -I$(get_build_dir taglib-vlc)/.install_tmp/usr/include -I$(get_build_dir ncursesw5)/.install_tmp/usr/include"
  LDFLAGS="$LDFLAGS -L$(get_build_dir taglib-vlc)/.install_tmp/usr/lib -L$(get_build_dir ncursesw5)/.install_tmp/usr/lib"
}

pre_make_target() {
  #This sed fixes compilation with lua 5.3.
  sed -e 's/luaL_optint/(int)&eger/' \
    -i $(get_build_dir vlc)/modules/lua/libs/{net,osd,volume}.c
  sed -e 's/luaL_checkint(/(int)luaL_checkinteger(/' \
    -i $(get_build_dir vlc)/modules/lua/{demux,libs/{configuration,net,osd,playlist}}.c \
       $(get_build_dir vlc)/modules/lua/{demux,libs/{stream,variables,volume}}.c
}

post_install() {
  rm -fR $INSTALL/usr/share/applications
  rm -fR $INSTALL/usr/share/icons
  rm -fR $INSTALL/usr/share/kde

  mkdir -p $INSTALL/usr/bin
    mv $INSTALL/usr/bin/vlc $INSTALL/usr/bin/vlc.bin
    cp -pR $PKG_DIR/scripts/* $INSTALL/usr/bin
    
  mkdir -p $INSTALL/usr/config/vlc
    cp -pR $PKG_DIR/config/* $INSTALL/usr/config/vlc
    
  mkdir -p $INSTALL/usr/share/locale
  for fgmo in `ls $PKG_BUILD/po/*.gmo`;do
    fname=`basename $fgmo .gmo`
    mkdir -p $INSTALL/usr/share/locale/$fname
    mkdir -p $INSTALL/usr/share/locale/$fname/LC_MESSAGES
    cp -p $fgmo $INSTALL/usr/share/locale/$fname/LC_MESSAGES/vlc.mo    
  done
}
