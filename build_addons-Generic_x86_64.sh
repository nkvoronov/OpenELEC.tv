#!/bin/sh

PROJECT=Generic ARCH=x86_64 ./scripts/create_addon vdr-addon
PROJECT=Generic ARCH=x86_64 ./scripts/create_addon tvheadend-addon
PROJECT=Generic ARCH=x86_64 ./scripts/create_addon oscam-addon