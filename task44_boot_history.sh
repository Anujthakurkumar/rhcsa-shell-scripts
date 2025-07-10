#!/bin/bash

#======================================================================================
#Script Description : Shows the 5 most recent system reboots with timestamps and uptime
#======================================================================================

if ! command -v last &> /dev/null; then
	echo " Errror: 'last' command not found! "
	exit 1
fi


echo " Last 5 System Reboots: "
echo "___________________________"
last reboot | head -n 5
echo "___________________________"
echo "Report Completed"
