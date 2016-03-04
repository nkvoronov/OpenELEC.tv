################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2016 Stephan Raue (stephan@openelec.tv)
#      Copyright (C) 2014 Stefan Benz (benz.st@gmail.com)
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

PKG_NAME="ffmpeg-tvheadend"
PKG_VERSION="2.8.5"
PKG_REV="1"
PKG_ARCH="any"
PKG_LICENSE="LGPLv2.1+"
PKG_SITE="https://ffmpeg.org"
PKG_URL="https://ffmpeg.org/releases/ffmpeg-${PKG_VERSION}.tar.xz"
PKG_SOURCE_DIR="ffmpeg-${PKG_VERSION}"
PKG_DEPENDS_TARGET="toolchain yasm:host zlib bzip2 libvorbis libvpx x264 lame opus libass Python"
PKG_PRIORITY="optional"
PKG_SECTION="multimedia"
PKG_SHORTDESC="FFmpeg is a complete, cross-platform solution to record, convert and stream audio and video."
PKG_LONGDESC="FFmpeg is a complete, cross-platform solution to record, convert and stream audio and video."
PKG_AUTORECONF="no"

if [ "$NONFREE" = yes ]; then
  PKG_LICENSE="nonfree"
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET fdk-aac"
  FFMPEG_FDKAAC="--enable-nonfree --enable-libfdk-aac --enable-encoder=libfdk_aac"
fi

# configure GPU drivers and dependencies:
  get_graphicdrivers

if [ "$VAAPI_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libva-intel-driver"
  FFMPEG_VAAPI="--enable-vaapi"
else
  FFMPEG_VAAPI="--disable-vaapi"
fi

if [ "$VDPAU_SUPPORT" = yes ]; then
  PKG_DEPENDS_TARGET="$PKG_DEPENDS_TARGET libvdpau"
  FFMPEG_VDPAU="--enable-vdpau"
else
  FFMPEG_VDPAU="--disable-vdpau"
fi

case "$TARGET_ARCH" in
  arm)
      FFMPEG_CPU=""
      FFMPEG_TABLES="--enable-hardcoded-tables"
  ;;
  x86_64)
      FFMPEG_CPU=""
      FFMPEG_TABLES="--disable-hardcoded-tables"
  ;;
esac

case "$TARGET_FPU" in
  neon*)
      FFMPEG_FPU="--enable-neon"
  ;;
  vfp*)
      FFMPEG_FPU=""
  ;;
  *)
      FFMPEG_FPU=""
  ;;
esac

unpack() {
  tar xvf  "$SOURCES/$PKG_NAME/ffmpeg-${PKG_VERSION}.tar.xz" -C $BUILD
}

pre_configure_target() {
  cd $ROOT/$PKG_BUILD
  rm -rf .$TARGET_NAME

  export pkg_config="$ROOT/$TOOLCHAIN/bin/pkg-config"

# ffmpeg fails building with LTO support
  strip_lto

# ffmpeg fails running with GOLD support
  strip_gold
}

configure_target() {
  ./configure --prefix=/usr \
              --cpu=$TARGET_CPU \
              --arch=$TARGET_ARCH \
              --enable-cross-compile \
              --cross-prefix=$TARGET_PREFIX \
              --sysroot=$SYSROOT_PREFIX \
              --sysinclude="$SYSROOT_PREFIX/usr/include" \
              --target-os="linux" \
              --extra-version="$PKG_VERSION" \
              --nm="$NM" \
              --ar="$AR" \
              --as="$CC" \
              --cc="$CC" \
              --ld="$CC" \
              --host-cc="$HOST_CC" \
              --host-cflags="$HOST_CFLAGS" \
              --host-ldflags="$HOST_LDFLAGS" \
              --host-libs="-lm" \
              --extra-cflags="$CFLAGS" \
              --extra-ldflags="$LDFLAGSS -fPIC" \
              --extra-libs="" \
              --extra-version="" \
              --build-suffix="" \
              --disable-everything \
              --enable-static \
              --disable-shared \
              --enable-gpl \
              --enable-nonfree \
              --disable-debug \
              --enable-stripping \
              --enable-pic \
              --enable-optimizations \
              --disable-armv5te \
              --disable-armv6t2 \
              --disable-extra-warnings \
              --disable-ffplay \
              --enable-swscale \
              --enable-swscale-alpha \
              --enable-postproc \
              --enable-avfilter \
              --enable-avutil \
              --enable-avformat \
              --enable-avcodec \
              --enable-swresample \
              --enable-avresample \
              --disable-small \
              --enable-network \
              --disable-gnutls \
              --enable-openssl \
              $FFMPEG_VDPAU \
              --disable-dxva2 \
              --enable-runtime-cpudetect \
              $FFMPEG_TABLES \
              --enable-encoder=ac3 \
              --enable-encoder=aac \
              --enable-encoder=mpeg2video \
              --enable-encoder=mp2 \
              --enable-encoder=libx264 \
              --enable-encoder=libvpx_vp8 \
              --enable-encoder=libvpx_vp9 \
              --enable-encoder=vorbis \
              --enable-encoder=libvorbis \
              --enable-decoder=mpeg2video \
              --enable-decoder=mp2 \
              --enable-decoder=ac3 \
              --enable-decoder=eac3 \
              --enable-decoder=h264 \
              --enable-decoder=h264_vdpau \
              --enable-decoder=hevc \
              --enable-decoder=aac \
              --enable-decoder=aac_latm \
              --enable-decoder=vorbis \
              --enable-decoder=libvorbis \
              --enable-hwaccels \
              --enable-muxer=spdif \
              --enable-muxer=adts \
              --enable-muxer=asf \
              --enable-muxer=ipod \
              --enable-muxer=mpegts \
              --enable-muxer=mpeg2dvd \
              --enable-muxer=matroska \
              --enable-muxer=webm \
              --enable-parsers \
              --enable-bsf=h264_mp4toannexb \
              --enable-bsf=hevc_mp4toannexb \
              --enable-protocol=file \
              --enable-filter=scale \
              --enable-filter=yadif \
              --enable-bzlib \
              $FFMPEG_FDKAAC \
              --enable-libmp3lame \
              --enable-libopus \
              --enable-libvorbis \
              --enable-libvpx \
              --enable-libx264 \
              --enable-libfreetype \
              --disable-fontconfig \
              --disable-libass \
              --enable-zlib \
              --enable-asm \
              --enable-yasm \
              $FFMPEG_CPU \
              $FFMPEG_FPU
}

makeinstall_target() {
    make install DESTDIR=$ROOT/$PKG_BUILD/.install_tmp $PKG_MAKEINSTALL_OPTS_TARGET
}