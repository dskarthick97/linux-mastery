#!/bin/bash

# Author             : Karthick Sabari D S
# Created Date       : 16-08-2021
# Last Modified Date : 16-08-2021

# Description:
# Updates the packages and reboots the system if required.

sudo apt-get update && sudo apt-get upgrade -y

if [ -f /var/run/reboot-required ]; then
	reboot
fi
