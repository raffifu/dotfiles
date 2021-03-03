#!/bin/bash

sudo wpa_supplicant -B -i wlp3s0 -c /etc/wpa_supplicant/wpa_supplicant.conf
wpa_cli
sudo dhcpcd
