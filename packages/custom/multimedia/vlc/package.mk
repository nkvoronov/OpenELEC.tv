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
PKG_DEPENDS_TARGET="toolchain libass librsvg lua:host lua liblivemedia:host libbluray samba libdvbpsi ffmpeg flac xcb-util-keysyms alsa-lib libsamplerate libupnp libmtp libmad faad2 libmodplug libmpeg2 fluidsynth dcadec libcdio taglib libva libvdpau zvbi chromaprint fdk-aac libvpx x264 lirc"
# libvncserver
PKG_PRIORITY="optional"
PKG_SECTION="custom/multimedia"
PKG_SHORTDESC="VideoLAN multimedia player and streamer"
PKG_LONGDESC="VLC is the VideoLAN project's media player. It plays MPEG, MPEG2, MPEG4, DivX, MOV, WMV, QuickTime, mp3, Ogg/Vorbis files, DVDs, VCDs, and multimedia streams from various network sources."
PKG_DISCLAIMER="this is an unofficial addon. please don't ask for support in openelec forum / irc channel"

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
			 --disable-dbus \
			 --disable-dbus-control"

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
				 --enable-lua \
				 --enable-httpd \
				 --enable-vlm \
				 --enable-addonmanagermodules"

PKG_CONFIGURE_INPUT_PLUGINS_OPTS="--enable-live555 \
				  --disable-dc1394 \
				  --disable-dv1394 \
				  --enable-linsys \
				  --disable-dvdread \
				  --disable-dvdnav \
				  --enable-bluray \
				  --disable-opencv \
				  --enable-smbclient \
				  --disable-sftp \
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
				      --disable-shout \
				      --disable-mkv \
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
				  --disable-postproc \
				  --enable-faad \
				  --enable-vpx \
				  --disable-twolame \
				  --enable-fdkaac \
				  --disable-quicktime \
				  --disable-a52 \
				  --disable-dca \
				  --enable-flac \
				  --enable-libmpeg2 \
				  --enable-vorbis \
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
				  --disable-sdl \
				  --disable-sdl-image \
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

PKG_CONFIGURE_INTERFACE_PLUGINS_OPTS="--disable-qt \
				      --disable-skins2 \
				      --disable-libtar \
				      --disable-macosx \
				      --disable-minimal-macosx \
				      --disable-macosx-dialog-provider \
				      --disable-ncurses \
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
				 --disable-gnutls \
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


post_install() {
  mkdir -p $INSTALL/usr/bin
    cp -p $PKG_DIR/scripts/* $INSTALL/usr/bin
}
