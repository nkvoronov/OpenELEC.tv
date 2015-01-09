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
VDR_CH_FILE="$HOME/.config/vdr/channels.conf"

. $MODULE_DIR/epgvariables.conf

## MAIN ##

mkdir -p $TEMP_DIR
mkdir -p $CONFIG_DIR

rm -rf $TEMP_DIR/*
rm -f $MAP_FILE
wget -P $TEMP_DIR $SAT_FILE_LIST

  if [ $(pidof vdr) ]; then
      $MODULE_DIR/make_channel_mapping.py -d $VDR_IP -x $TEMP_DIR/ua.channels.xml.gz -o $MAP_FILE
  else
      $MODULE_DIR/make_channel_mapping.py -f $VDR_CH_FILE -x $TEMP_DIR/ua.channels.xml.gz -o $MAP_FILE
  fi
