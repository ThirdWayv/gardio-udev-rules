#!/bin/bash
sudo rm -f /etc/udev/rules.d/gardioRules.rules

cat <<EOF > /etc/udev/rules.d/gardioRules.rules
# HW.1, 
SUBSYSTEM=="hidraw", ATTRS{idVendor}=="3723", MODE="0666"

udevadm control --reload-rules
udevadm trigger
