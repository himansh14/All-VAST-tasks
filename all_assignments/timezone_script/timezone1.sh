#!/bin/bash

DIRECTORY=$(find /usr/share/zoneinfo | timedatectl list-timezones)
export DIRECTORY
echo "$DIRECTORY" > /opt/all_assignments/backup/timezone_script/input1.txt

TIMEDATE=$(sudo timedatectl set-timezone "$1")
export TIMEDATE
echo "$TIMEDATE" > /opt/all_assignments/backup/timezone_script/input2.txt
echo "$TIMEDATE"

TIMEDATE_CTL=$(timedatectl)
export TIMEDATE_CTL
echo "$TIMEDATE_CTL" 
#> /opt/all_assignments/backup/timezone_ist_script/input3.txt

TZ1="$1"
export TZ1

