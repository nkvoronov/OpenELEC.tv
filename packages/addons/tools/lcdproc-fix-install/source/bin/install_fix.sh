#!/bin/sh

################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2014 Stephan Raue (stephan@openelec.tv)
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

. /etc/profile

WORK_DIR="/storage/tmp"

ADDON_DIR="/storage/.kodi/addons/tools.lcdproc-fix-install"
UPDATE="$ADDON_DIR/update"

################ set source ########################################

mkdir -p $WORK_DIR
mkdir -p $WORK_DIR/source
mkdir -p $WORK_DIR/system.new
#Get source SYSTEM
mount -t squashfs -o loop /flash/SYSTEM $WORK_DIR/source
cp -a $WORK_DIR/source/* $WORK_DIR/system.new
umount $WORK_DIR/source

################ set changes  ######################################

#Install fix
cp -a $UPDATE/* $WORK_DIR/system.new/
chmod a+x $WORK_DIR/system.new/usr/sbin/LCDd

################ set update and clean ################################

mksquashfs $WORK_DIR/system.new $WORK_DIR/SYSTEM.new
cp $WORK_DIR/SYSTEM.new /storage/.update/SYSTEM
cp /flash/KERNEL /storage/.update
md5sum /storage/.update/SYSTEM > /storage/.update/SYSTEM.md5
md5sum /storage/.update/KERNEL > /storage/.update/KERNEL.md5
rm -R $WORK_DIR