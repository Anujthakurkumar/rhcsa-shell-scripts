#!/bin/bash

#============================================
# Purpose: Update /etc/motd with system details
#============================================

# Collect system information
HOSTNAME=$(hostname)
IP_ADDR=$(hostname -I | awk '{print $1}')
UPTIME=$(uptime -p)
LAST_LOGIN=$(last -n 1 | head -n 1)

# Build the message
MOTD="Welcome to $HOSTNAME!
---------------------------------------
 IP Address  : $IP_ADDR
 Uptime      : $UPTIME
 Last Login  : $LAST_LOGIN
---------------------------------------
Have a great day, $(whoami)!
"

# Write to /etc/motd (requires root)
echo "$MOTD" | sudo tee /etc/motd > /dev/null

