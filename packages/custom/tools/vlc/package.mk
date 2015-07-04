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
PKG_VERSION="2.0.9"
PKG_REV="0"
PKG_ARCH="any"
PKG_LICENSE="GPL"
PKG_SITE="http://www.videolan.org"
PKG_URL="http://download.videolan.org/pub/videolan/vlc/$PKG_VERSION/vlc-$PKG_VERSION.tar.xz"
PKG_DEPENDS_TARGET="toolchain libdvbpsi"
PKG_PRIORITY="optional"
PKG_SECTION="custom"
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
            --disable-gprof \
            --disable-cprof \
            --disable-debug \
            --enable-run-as-root \
            --disable-coverage \
            --enable-sout \
            --disable-lua \
            --disable-httpd \
            --disable-libproxy \
            --disable-vlm \
            --disable-growl \
            --disable-notify \
            --disable-taglib \
            --disable-live555 \
            --disable-dc1394 \
            --disable-dv \
            --disable-dvdread \
            --disable-dvdnav \
            --disable-opencv \
            --disable-dshow \
            --disable-decklink \
            --disable-smb \
            --disable-sftp \
            --disable-v4l2 \
            --disable-pvr \
            --disable-gnomevfs \
            --disable-vcdx \
            --disable-vcd \
            --disable-libcddb \
            --enable-dvbpsi \
            --disable-screen \
            --disable-ogg \
            --disable-mux_ogg \
            --disable-shout\
            --disable-mkv \
            --disable-mod \
            --disable-mpc \
            --disable-gme \
            --disable-wma-fixed \
            --disable-shine \
            --disable-omxil \
            --disable-mad \
            --disable-merge-ffmpeg \
            --disable-avcodec \
            --disable-switcher \
            --disable-avformat \
            --disable-swscale \
            --disable-postproc \
            --disable-faad \
            --disable-twolame \
            --disable-quicktime \
            --disable-real \
            --disable-realrtsp \
            --disable-libtar \
            --disable-a52 \
            --disable-dca \
            --disable-flac \
            --disable-libmpeg2 \
            --disable-vorbis \
            --disable-tremor \
            --disable-speex \
            --disable-theora \
            --disable-dirac \
            --disable-schroedinger \
            --disable-png \
            --disable-x264 \
            --disable-fluidsynth \
            --disable-zvbi \
            --disable-telx \
            --disable-libass \
            --disable-kate \
            --disable-tiger \
            --disable-libva \
            --without-x \
            --disable-xcb \
            --disable-xvideo \
            --disable-glx \
            --disable-sdl \
            --disable-sdl-image \
            --disable-freetype \
            --disable-fribidi \
            --disable-fontconfig \
            --disable-libxml2 \
            --disable-svg \
            --disable-directx \
            --disable-wingdi \
            --disable-directfb \
            --disable-aa \
            --disable-caca \
            --disable-oss \
            --disable-pulse \
            --disable-portaudio \
            --disable-alsa \
            --disable-waveout \
            --disable-macosx-audio \
            --disable-jack \
            --disable-upnp \
            --disable-skins2 \
            --disable-hildon \
            --disable-qt4 \
            --disable-kai \
            --disable-macosx \
            --disable-macosx-vout \
            --disable-macosx-dialog-provider \
            --disable-macosx-eyetv \
            --disable-macosx-vlc-app \
            --disable-macosx-qtkit \
            --disable-macosx-quartztext \
            --disable-ncurses \
            --disable-xosd \
            --disable-fbosd \
            --disable-visual \
            --disable-goom \
            --disable-projectm \
            --disable-atmo \
            --disable-bonjour \
            --disable-udev \
            --disable-mtp \
            --disable-lirc \
            --disable-libgcrypt \
            --disable-gnutls \
            --disable-update-check \
            --disable-sqlite \
            --disable-loader \
            --disable-kva \
            --disable-bluray \
            --disable-notify \
            --disable-samplerate \
            --disable-sid \
            --disable-crystalhd \
            --disable-dxva2 \
            --enable-vlc"

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

  mkdir -p $INSTALL/usr/lib/vlc/plugins
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/access/.libs/libaccess_http_plugin.so $INSTALL/usr/lib/vlc/plugins
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/access_output/.libs/libaccess_output_udp_plugin.so $INSTALL/usr/lib/vlc/plugins
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/control/.libs/libdummy_plugin.so $INSTALL/usr/lib/vlc/plugins
    cp -P $PKG_BUILD/.$TARGET_NAME/modules/demux/.libs/libts_plugin.so $INSTALL/usr/lib/vlc/plugins
}