# -*- coding: utf-8 -*-
# Licence: GPL v.3 http://www.gnu.org/licenses/gpl.html

import sys
import os
import xbmc
import xbmcaddon

# Script constants
__settings__      = xbmcaddon.Addon(id = 'script.vdr.front')
__addon__      = xbmcaddon.Addon('script.vdr.front')
__cwd__           = __settings__.getAddonInfo('path')
__resources_lib__ = xbmc.translatePath(os.path.join(__cwd__, 'resources', 'lib'))
sys.path.append(__resources_lib__)
import functions

type = __addon__.getSetting("VDR_TYPE")

functions.dbg_log('vdr type', ' type [%s]' % type)

if (__name__ == "__main__"):
    if type == 'frontend':
        functions.run_vdr_front(1)
        functions.set_vdr_conf(0)
    if type == 'service':
        functions.run_vdr(1)
        functions.set_vdr_front_conf(0)
    if type == 'all':
        functions.run_vdr(1)
        functions.run_vdr_front(1)

	    