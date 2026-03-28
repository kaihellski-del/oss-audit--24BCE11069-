#!/bin/bash

KERNEL=$(uname -r)
USER_NAME=$(whoami)
UPTIME=$(uptime -p)
DISTRO=$(grep '^PRETTY_NAME' /etc/os-release | cut -d '"' -f 2)
CURRENT_DATE=$(date '+%A, %B %d, %Y - %T')

echo "----------------------------------------"
echo "        OPEN SOURCE AUDIT - SYSTEM REPORT"
echo "----------------------------------------"
echo "User            : $USER_NAME"
echo "Distribution    : $DISTRO"
echo "Kernel Version  : $KERNEL"
echo "System Uptime   : $UPTIME"
echo "Current Date    : $CURRENT_DATE"
echo "License         : GNU GPL v2 (Git)"
echo "----------------------------------------"
