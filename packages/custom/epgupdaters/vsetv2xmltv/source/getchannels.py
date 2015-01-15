#!/usr/bin/python
# -*- coding: utf-8 -*-

import vsetv_parser

parser = vsetv_parser.parser_vsetv('http://www.vsetv.com/', '/tmp/vsetv', 'windows-1251')
parser.getcontent('channels.html')
parser.parsecontent_channels()
parser.save_channeldata()
