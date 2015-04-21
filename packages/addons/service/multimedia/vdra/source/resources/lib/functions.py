################################################################################
#      This file is part of OpenELEC - http://www.openelec.tv
#      Copyright (C) 2009-2013 Stephan Raue (stephan@openelec.tv)
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

import xbmc
import xbmcaddon
import xbmcgui
import os
import sys
import traceback
import subprocess

__addon__      = xbmcaddon.Addon('service.multimedia.vdra')
patch_to_configs = '/storage/.config/vdr'

######################################################################################################
# dbg_log
def dbg_log(source, text, level=4):
    xbmc.log('## VDR Addon ## ' + source + ' ## ' + text, level)
    xbmc.log(traceback.format_exc())

######################################################################################################
# set_service_option	
def set_service_option(service, option, value):
    try:
        lines = []
        changed = False
        conf_file_name = '%s/%s.conf' % (patch_to_configs, service)
        if os.path.isfile(conf_file_name):
            with open(conf_file_name, 'r') as conf_file:
                for line in conf_file:
                    if option in line:
                        line = '%s=%s' % (option, value)
                        changed = True
                    lines.append(line.strip())
        if changed == False:
            lines.append('%s=%s' % (option, value))
        with open(conf_file_name, 'w') as conf_file:
            conf_file.write('\n'.join(lines) + '\n')
    except Exception, e:
        dbg_log('function::set_service_option', 'ERROR: (' + repr(e) + ')')

######################################################################################################
# execute		
def execute(command_line, get_result=0):
    try:
        dbg_log('function::execute', 'enter_function', 0)
        dbg_log('function::execute::command', command_line, 0)
        if get_result == 0:
            process = subprocess.Popen(command_line, shell=True, close_fds=True)
            process.wait()
        else:
            result = ''
            process = subprocess.Popen(command_line, shell=True, close_fds=True, stdout=subprocess.PIPE, stderr=subprocess.STDOUT)
            process.wait()
            for line in process.stdout.readlines():
                result = result + line
            return result
        dbg_log('function::execute', 'exit_function', 0)
    except Exception, e:
        dbg_log('function::execute', 'ERROR: (' + repr(e) + ')')

######################################################################################################
# get_service_state		
def get_service_state(service):
    try:
        if os.path.exists('%s/%s.conf' % (patch_to_configs, service)):
            return '1'
        else:
            return '0'
    except Exception, e:
        dbg_log('function::get_service_state', 'ERROR: (' + repr(e) + ')')

######################################################################################################
# set_service		
def set_service(service, options, state):
    try:
        dbg_log('function::set_service', 'enter_function')
        config = {}
        changed = False

        # Service Enabled

        if state == 1:

            # Is Service alwys enabled ?

            if get_service_state(service) == '1':
                cfn = '%s/%s.conf' % (patch_to_configs, service)
                cfo = cfn
            else:
                cfn = '%s/%s.conf' % (patch_to_configs, service)
                cfo = '%s/%s.disabled' % (patch_to_configs, service)
            if os.path.exists(cfo) and not cfo == cfn:
                os.remove(cfo)
            with open(cfn, 'w') as cf:
                for option in options:
                    cf.write('%s=%s\n' % (option, options[option]))
        else:

        # Service Disabled

            cfo = '%s/%s.conf' % (patch_to_configs, service)
            cfn = '%s/%s.disabled' % (patch_to_configs, service)
            if os.path.exists(cfo):
                os.rename(cfo, cfn)
				
#        if not __oe__.is_service:
#            if service in defaults._services:
#                for svc in defaults._services[service]:
#                    execute('systemctl restart %s' % svc)
					
        dbg_log('function::set_service', 'exit_function')
    except Exception, e:
        dbg_log('function::set_service', 'ERROR: (' + repr(e) + ')')

######################################################################################################
# set_vdr_conf
def set_vdr_conf(state):
    try:
	options = {}
	options['VDR_VIDEO_DIR'] = '"%s"' % __addon__.getSetting("VDR_VIDEO_DIR")
        options['VDR_ENABLE_CHARSET_OVERRIDE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_CHARSET_OVERRIDE")
        options['VDR_CHARSET_OVERRIDE_STR'] = '"%s"' % __addon__.getSetting("VDR_CHARSET_OVERRIDE_STR")				
	options['VDR_ENABLE_EXTERNAL_RECCMD'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EXTERNAL_RECCMD")
        options['VDR_EXTERNAL_RECCMD_PATH'] = '"%s"' % __addon__.getSetting("VDR_EXTERNAL_RECCMD_PATH") 
	options['DEBUG'] = '"%s"' % __addon__.getSetting("DEBUG") 
        options['VDR_PVR_PLUGIN'] = '"%s"' % __addon__.getSetting("VDR_PVR_PLUGIN")
        options['VDR_ENABLE_IPTV'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_IPTV")
        options['VDR_IPTV_NUM_DEVICES'] = '"%s"' % __addon__.getSetting("VDR_IPTV_NUM_DEVICES")
        options['VDR_ENABLE_STREAMDEV_CLIENT'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_STREAMDEV_CLIENT")
        options['VDR_ENABLE_STREAMDEV_SERVER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_STREAMDEV_SERVER")        
        options['VDR_ENABLE_LIVE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_LIVE")
        options['VDR_LIVE_IP'] = '"%s"' % __addon__.getSetting("VDR_LIVE_IP")
        options['VDR_LIVE_PORT'] = '"%s"' % __addon__.getSetting("VDR_LIVE_PORT")
	options['VDR_ENABLE_CONTROL'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_CONTROL")
	options['VDR_CONTROL_PORT'] = '"%s"' % __addon__.getSetting("VDR_CONTROL_PORT")
	options['VDR_ENABLE_EEPG'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EEPG")
	options['VDR_ENABLE_EPGSEARCH'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EPGSEARCH")
	options['VDR_ENABLE_XMLTV2VDR'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_XMLTV2VDR")
	options['VDR_ENABLE_DUMMYDEVICE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_DUMMYDEVICE")
	options['VDR_ENABLE_SATIP'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SATIP")		
	options['VDR_ENABLE_EPGFIXER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EPGFIXER")
	options['VDR_ENABLE_RESTFULAPI'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_RESTFULAPI")
	options['VDR_RESTFULAPI_IP'] = '"%s"' % __addon__.getSetting("VDR_RESTFULAPI_IP")
	options['VDR_RESTFULAPI_PORT'] = '"%s"' % __addon__.getSetting("VDR_RESTFULAPI_PORT")
	options['VDR_ENABLE_WIRBELSCAN'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_WIRBELSCAN")
	options['VDR_ENABLE_UPNP'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_UPNP")
	options['VDR_ENABLE_SOFTCAM'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SOFTCAM")
	options['VDR_SOFTCAM_OPTION'] = '"%s"' % __addon__.getSetting("VDR_SOFTCAM_OPTION")
	set_service('vdr', options, state)

    except IOError as e:
        dbg_log('function::set_vdr_conf', 'ERROR: (' + repr(e) + ')')

######################################################################################################
# set_vdr_front_conf
def set_vdr_front_conf(state):
    try:
	options = {}
	options['VDR_VIDEO_DIR'] = '"%s"' % __addon__.getSetting("VDR_VIDEO_DIR")
        options['VDR_ENABLE_CHARSET_OVERRIDE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_CHARSET_OVERRIDE")
        options['VDR_CHARSET_OVERRIDE_STR'] = '"%s"' % __addon__.getSetting("VDR_CHARSET_OVERRIDE_STR")				
	options['VDR_ENABLE_EXTERNAL_RECCMD'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EXTERNAL_RECCMD")
        options['VDR_EXTERNAL_RECCMD_PATH'] = '"%s"' % __addon__.getSetting("VDR_EXTERNAL_RECCMD_PATH") 
	options['DEBUG'] = '"%s"' % __addon__.getSetting("DEBUG") 
        options['VDR_ENABLE_IPTV'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_IPTV_F")
        options['VDR_IPTV_NUM_DEVICES'] = '"%s"' % __addon__.getSetting("VDR_IPTV_NUM_DEVICES_F")
        options['VDR_ENABLE_STREAMDEV_CLIENT'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_STREAMDEV_CLIENT_F")
        options['VDR_ENABLE_STREAMDEV_SERVER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_STREAMDEV_SERVER_F")        
        options['VDR_ENABLE_LIVE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_LIVE_F")
        options['VDR_LIVE_IP'] = '"%s"' % __addon__.getSetting("VDR_LIVE_IP_F")
        options['VDR_LIVE_PORT'] = '"%s"' % __addon__.getSetting("VDR_LIVE_PORT_F")
	options['VDR_ENABLE_CONTROL'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_CONTROL_F")
	options['VDR_CONTROL_PORT'] = '"%s"' % __addon__.getSetting("VDR_CONTROL_PORT_F")
	options['VDR_ENABLE_EEPG'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EEPG_F")
	options['VDR_ENABLE_EPGSEARCH'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EPGSEARCH_F")
	options['VDR_ENABLE_XMLTV2VDR'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_XMLTV2VDR_F")
	options['VDR_ENABLE_DUMMYDEVICE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_DUMMYDEVICE_F")
	options['VDR_ENABLE_SATIP'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SATIP_F")		
	options['VDR_ENABLE_EPGFIXER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_EPGFIXER_F")
	options['VDR_ENABLE_RESTFULAPI'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_RESTFULAPI_F")
	options['VDR_RESTFULAPI_IP'] = '"%s"' % __addon__.getSetting("VDR_RESTFULAPI_IP_F")
	options['VDR_RESTFULAPI_PORT'] = '"%s"' % __addon__.getSetting("VDR_RESTFULAPI_PORT_F")
	options['VDR_ENABLE_WIRBELSCAN'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_WIRBELSCAN_F")
	options['VDR_ENABLE_UPNP'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_UPNP_F")
	options['VDR_ENABLE_SOFTCAM'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SOFTCAM_F")
	options['VDR_SOFTCAM_OPTION'] = '"%s"' % __addon__.getSetting("VDR_SOFTCAM_OPTION_F")
	options['VDR_ENABLE_FEMON'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_FEMON")
	options['VDR_ENABLE_SYSTEMINFO'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SYSTEMINFO")
	options['VDR_ENABLE_SLEEPTIMER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SLEEPTIMER")
	options['VDR_ENABLE_FILEBROWSER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_FILEBROWSER")
	options['VDR_ENABLE_LCDPROC'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_LCDPROC")
	options['VDR_ENABLE_TEXT2SKIN'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_TEXT2SKIN")
	options['VDR_ENABLE_SKINNOPACITY'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SKINNOPACITY")
	options['VDR_ENABLE_SKINFLAT'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SKINFLAT")
	options['VDR_ENABLE_SKINFLATPLUS'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SKINFLATPLUS")
	options['VDR_ENABLE_MENUORG'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_MENUORG")
	options['VDR_ENABLE_TVGUIDE'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_TVGUIDE")
	options['VDR_ENABLE_TVSCRAPER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_TVSCRAPER")
	options['VDR_ENABLE_SKINDESIGNER'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_SKINDESIGNER")
	options['VDR_ENABLE_WEATHERFORECAST'] = '"%s"' % __addon__.getSetting("VDR_ENABLE_WEATHERFORECAST")
	options['VDR_FRONT'] = '"%s"' % __addon__.getSetting("VDR_FRONT")
	options['VDR_OUTPUT_VIDEO'] = '"%s"' % __addon__.getSetting("VDR_OUTPUT_VIDEO")
	options['VDR_SOUND_SOFT'] = '"%s"' % __addon__.getSetting("VDR_SOUND_SOFT")
	options['VDR_SOUND_XINE'] = '"%s"' % __addon__.getSetting("VDR_SOUND_XINE")
	options['VDR_SOFT_PARAM'] = '"%s"' % __addon__.getSetting("VDR_SOFT_PARAM")
	options['VDR_XINE_PARAM'] = '"%s"' % __addon__.getSetting("VDR_XINE_PARAM")		
        set_service('vdr-front', options, state)
		
    except IOError as e:
        dbg_log('function::set_vdr_front_conf', 'ERROR: (' + repr(e) + ')')
	
######################################################################################################
# run_vdr
def run_vdr(state):
    try:
        set_vdr_conf(state)
	command = __addon__.getSetting("VDR_COMMAND_SERVICE")
	dbg_log('function::run_vdr', ' command [%s]' % command)
        execute(command)
    except IOError as e:
        dbg_log('function::run_vdr', 'ERROR: (' + repr(e) + ')')
	
######################################################################################################
# run_vdr_front
def run_vdr_front(state):
    try:
        set_vdr_front_conf(state)
	command = __addon__.getSetting("VDR_COMMAND_FRONTEND")
	dbg_log('function::run_vdr_front', ' command [%s]' % command)
        execute(command)
    except IOError as e:
        dbg_log('function::run_vdr_front', 'ERROR: (' + repr(e) + ')')
