#!/usr/bin/python
# -*- coding: utf-8 -*-
import os, sys
import vsetv_parser

count_day = 3
fulldesc = True

parser = vsetv_parser.parser_vsetv('http://www.vsetv.com/', '/tmp/vsetv', 'windows-1251')
parser.load_channeldata()
parser.isfulldesc = fulldesc
parser.parsecontent_programme_all(count_day)
parser.set_programmestop()
parser.save_xmltv()