#!/bin/sh

################################################################################
#      This file is part of Alex@ELEC - http://www.alexelec.ru
#      Copyright (C) 2011-2013 Alexandr Zuyev (alex@alexelec.ru)
################################################################################

## Global variables ##

MODULE_DIR="$HOME/.config/vdr/plugins/epgupdater"
CONFIG_DIR="$MODULE_DIR/config"
TEMP_DIR="/tmp/epgudater"
MAP_FILE="$CONFIG_DIR/channels-map.ini"

. $MODULE_DIR/epgvariables.conf

## MAIN ##

mkdir -p $TEMP_DIR
mkdir -p $CONFIG_DIR

rm -rf $TEMP_DIR/*
rm -f $MAP_FILE

  if [ $(pidof vdr) ]; then

      wget -P $TEMP_DIR $SAT_FILE_LIST

      $MODULE_DIR/zvdrtools/svdrpsend.py MESG "Update EPG start..."
      START_DATE=`date +%H-%M-%S`
      echo "$START_DATE: VDR Update EPG start..."
      echo "### $START_DATE: VDR Update EPG start...###" >> /var/log/messages

      $MODULE_DIR/make_channel_mapping.py -d $VDR_IP -x $TEMP_DIR/$RU_UA.channels.xml.gz -o $MAP_FILE

      $MODULE_DIR/import_xmltv.py -d $VDR_IP -x $TEMP_DIR/tvprogram_ua_ru.gz -o $MAP_FILE

      $MODULE_DIR/zvdrtools/svdrpsend.py MESG "Update EPG completed."
      STOP_DATE=`date +%H-%M-%S`
      echo "$STOP_DATE: VDR Update EPG completed."
      echo "### $STOP_DATE: VDR Update EPG completed.###" >> /var/log/messages

  else
      echo "### VDR Update EPG ERROR: VDR not running!.###" >> /var/log/messages
      echo "VDR Update EPG ERROR: VDR not running!."
  fi
