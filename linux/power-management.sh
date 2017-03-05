#!/bin/bash

# Enable power management for PCI and USB devices
# Verify power consumption (watage) in powertop before and after. Tunables should be "good".
# Put this file in /usr/local/bin
# Add "/usr/local/bin/power-management.sh" to /etc/rc.local before exit
# Restart


for target in /sys/bus/pci/devices/*/power/control; do
  echo 'auto' > $target
done
for target in /sys/bus/usb/devices/*/power/control; do
  echo 'auto' > $target
done
         
