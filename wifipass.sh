#!/bin/bash

# This script is designed to retrieve the Wi-Fi Pre-Shared Key (PSK) or password for a specific wireless network or 
# for all available wireless networks if no specific SSID is provided as an argument
[[ $# -gt 0 ]] && SSID="$1" || SSID="*"

sudo grep -HPo '(?<=psk=)(.*)$' /etc/NetworkManager/system-connections/$SSID | sed -e "s/\/.*\///g"
