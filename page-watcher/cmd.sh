#!/bin/bash
watch -n 10 'wget http://play.google.com/store/devices/details/Nexus_6_64GB_Cloud_White?id=nexus_6_white_64gb -O site.html -q; if [ $(grep "out of inventory" site.html -c) -eq 0 ]; then paplay /usr/share/sounds/LinuxMint/stereo/phone-incoming-call.ogg; fi'
