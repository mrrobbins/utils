#!/bin/bash

oldhash=""

while true; do
newhash=$(wget https://play.google.com/store/devices/details/Nexus_6_64GB_Cloud_White?id=nexus_6_white_64gb -q -O site.html | md5sum)
echo $newhash
if [ "$newhash" != "$oldhash" ]; then 
	paplay /usr/share/sounds/LinuxMint/stereo/phone-incoming-call.ogg
fi
oldhash=$newhash

sleep 5

done
