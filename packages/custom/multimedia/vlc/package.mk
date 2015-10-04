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

PKG_NAME="vlc"
PKG_VERSION="2.2.1"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.videolan.org"
PKG_URL="http://download.videolan.org/pub/videolan/vlc/$PKG_VERSION/vlc-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libdvbpsi lua:host liblivemedia:host libupnp librsvg xcb-util-keysyms libsamplerate"
PKG_PRIORITY="optional"
PKG_SECTION="tools"
PKG_SHORTDESC="VideoLAN multimedia player and streamer"
PKG_LONGDESC="VLC is the VideoLAN project's media player. It plays MPEG, MPEG2, MPEG4, DivX, MOV, WMV, QuickTime, mp3, Ogg/Vorbis files, DVDs, VCDs, and multimedia streams from various network sources."
PKG_DISCLAIMER="this is an unofficial addon. please don't ask for support in openelec forum / irc channel"

PKG_IS_ADDON="no"
PKG_AUTORECONF="yes"

PKG_CONFIGURE_OPTS_TARGET="--enable-silent-rules \
            --disable-dependency-tracking \
            --without-contrib \
            --disable-nls \
            --disable-rpath \
            --disable-dbus \
            --disable-dbus-control \
            --disable-telepathy \
            --enable-run-as-root \
	    --enable-lua \
	    --enable-live555 \
            --disable-dc1394 \
	    --disable-dv1394 \
            --disable-dvdread \
            --disable-dvdnav \
	    --enable-bluray \
            --disable-opencv \
	    --enable-smbclient \
	    --disable-sftp \
            --disable-v4l2 \
            --disable-decklink \
            --disable-gnomevfs \
            --disable-vcdx \
            --disable-vcd \
            --disable-libcddb \
            --disable-screen \
	    --disable-realrtsp \
	    --disable-macosx-eyetv \
            --disable-macosx-qtkit \
	    --disable-macosx-avfoundation \
	    --enable-dvbpsi \
            --disable-gme \
	    --disable-sid \
            --enable-ogg \
            --enable-mux_ogg \
            --disable-shout\
            --disable-mkv \
            --disable-mod \
            --disable-mpc \
            --disable-wma-fixed \
            --disable-shine \
            --disable-omxil \
	    --disable-omxil-vout \
	    --disable-rpi-omxil \
	    --disable-mmal-codec \
	    --disable-crystalhd \
            --disable-mad \
            --disable-merge-ffmpeg \
	    --disable-gst-decode \
            --disable-avcodec \
	    --disable-libva \
            --disable-avformat \
            --disable-swscale \
            --disable-postproc \
            --disable-faad \
	    --disable-vpx \
            --disable-twolame \
	    --disable-fdkaac \
            --disable-quicktime \
            --disable-a52 \
            --disable-dca \
            --disable-flac \
            --disable-libmpeg2 \
            --disable-vorbis \
            --disable-tremor \
            --disable-speex \
	    --disable-opus \
            --disable-theora \
            --disable-schroedinger \
            --enable-png \
	    --enable-jpeg \
	    --disable-x262 \
	    --disable-x265 \
	    --disable-x26410b \
            --disable-x264 \
	    --disable-mfx \
            --disable-fluidsynth \
            --disable-zvbi \
            --disable-telx \
            --disable-libass \
            --disable-kate \
            --disable-tiger \
	    --disable-gles2 \
	    --disable-gles1 \
            --with-x \
            --enable-xcb \
            --disable-xvideo \
	    --disable-vdpau \
            --disable-sdl \
            --disable-sdl-image \
            --enable-freetype \
            --enable-fribidi \
            --enable-fontconfig \
            --disable-macosx-quartztext \
            --enable-svg \
	    --disable-svgdec \
            --disable-directx \
            --disable-directfb \
            --disable-aa \
            --disable-caca \
	    --disable-kva \
            --disable-pulse \
            --enable-alsa \
            --disable-oss \
	    --disable-sndio \
	    --disable-wasapi \
	    --disable-audioqueue \
            --disable-jack \
	    --enable-samplerate \
	    --disable-kai \
	    --disable-qt \
            --disable-skins2 \
            --disable-libtar \
            --disable-macosx \
	    --disable-minimal-macosx \
            --disable-macosx-dialog-provider \
            --disable-ncurses \
            --enable-lirc \
            --disable-goom \
	    --enable-vsxu \
            --enable-projectm \
            --enable-atmo \
	    --enable-glspectrum \
            --enable-bonjour \
            --enable-udev \
            --disable-mtp \
            --enable-upnp \
            --enable-libxml2 \
            --enable-libgcrypt \
	    --disable-gnutls \
	    --disable-update-check \
	    --disable-growl \
	    --disable-notify \
            --enable-vlc \
	    --disable-macosx-vlc-app"

make_target() {
  make -i 
}

makeinstall_target() {
  : # nop
}

post_install() {

  mkdir -p $INSTALL/usr/bin
    cp -P $PKG_BUILD/.$TARGET_NAME/bin/.libs/vlc $INSTALL/usr/bin/vlc.bin
    cp -p $PKG_DIR/scripts/* $INSTALL/usr/bin

  mkdir -p $INSTALL/usr/lib
    cp -P $PKG_BUILD/.$TARGET_NAME/lib/.libs/libvlc.so* $INSTALL/usr/lib
    cp -P $PKG_BUILD/.$TARGET_NAME/src/.libs/libvlccore.so* $INSTALL/usr/lib

  mkdir -p $INSTALL/usr/lib/vlc
    cp -P $PKG_BUILD/.$TARGET_NAME/bin/.libs/vlc-cache-gen $INSTALL/usr/lib/vlc

  mkdir -p $INSTALL/usr/lib/vlc/plugins
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins

  mkdir -p $INSTALL/usr/lib/vlc/plugins/access
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/access/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/access

  mkdir -p $INSTALL/usr/lib/vlc/plugins/access_output
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/access_output/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/access_output

  mkdir -p $INSTALL/usr/lib/vlc/plugins/audio_filter
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/audio_filter/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/audio_filter

  mkdir -p $INSTALL/usr/lib/vlc/plugins/audio_mixer
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/audio_mixer/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/audio_mixer

  mkdir -p $INSTALL/usr/lib/vlc/plugins/audio_output
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/audio_output/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/audio_output

  mkdir -p $INSTALL/usr/lib/vlc/plugins/codec
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/codec/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/codec

  mkdir -p $INSTALL/usr/lib/vlc/plugins/control
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/control/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/control

  mkdir -p $INSTALL/usr/lib/vlc/plugins/demux
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/demux/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/demux

  mkdir -p $INSTALL/usr/lib/vlc/plugins/gui
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/gui/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/gui

  mkdir -p $INSTALL/usr/lib/vlc/plugins/lua
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/lua/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/lua

  mkdir -p $INSTALL/usr/lib/vlc/plugins/meta_engine
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/meta_engine/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/meta_engine

  mkdir -p $INSTALL/usr/lib/vlc/plugins/misc
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/misc/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/misc

  mkdir -p $INSTALL/usr/lib/vlc/plugins/mux
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/mux/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/mux

  mkdir -p $INSTALL/usr/lib/vlc/plugins/notify
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/notify/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/notify

  mkdir -p $INSTALL/usr/lib/vlc/plugins/packetizer
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/packetizer/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/packetizer

  mkdir -p $INSTALL/usr/lib/vlc/plugins/service_discovery
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/service_discovery/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/service_discovery

  mkdir -p $INSTALL/usr/lib/vlc/plugins/stream_filter
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/stream_filter/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/stream_filter

  mkdir -p $INSTALL/usr/lib/vlc/plugins/stream_out
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/stream_out/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/stream_out

  mkdir -p $INSTALL/usr/lib/vlc/plugins/text_renderer
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/text_renderer/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/text_renderer

  mkdir -p $INSTALL/usr/lib/vlc/plugins/video_chroma
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/video_chroma/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/video_chroma

  mkdir -p $INSTALL/usr/lib/vlc/plugins/video_filter
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/video_filter/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/video_filter

  mkdir -p $INSTALL/usr/lib/vlc/plugins/video_output
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/video_output/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/video_output

  mkdir -p $INSTALL/usr/lib/vlc/plugins/video_splitter
    #cp -P $PKG_BUILD/.$TARGET_NAME/modules/video_splitter/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/video_splitter

  mkdir -p $INSTALL/usr/lib/vlc/plugins/visualization
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/visualization/.libs/*_plugin.so $INSTALL/usr/lib/vlc/plugins/visualization
    
}
