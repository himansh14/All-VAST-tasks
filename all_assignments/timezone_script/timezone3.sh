#!/bin/bash

TIMEDATECTL=$(timedatectl)
echo "##################  Current time & date as mentioned below  #####################"
echo "$TIMEDATECTL"
echo "#################################################################################"

ASIA=$(timedatectl list-timezones | grep Asia)
echo "1) ASIA"
asia=$"/opt/new_timezone/asia"
echo "$ASIA" > "${asia}"

AFRICA=$(timedatectl list-timezones | grep Africa)
echo "2) AFRICA"
africa=$"/opt/new_timezone/africa"
echo "$AFRICA" > "${africa}"

AMERICA=$(timedatectl list-timezones | grep America)
echo "3) AMERICA"
africa=$"/opt/new_timezone/america"
echo "$AMERICA" > "${africa}"

ANTARCTICA=$(timedatectl list-timezones | grep Antarctica)
echo "4) ANTARCTICA"
antarctica=$"/opt/new_timezone/antarctica"
echo "$ANTARCTICA" > "${antarctica}"

AUSTRALIA=$(timedatectl list-timezones | grep Australia)
echo "5) AUSTRALIA"
australia=$"/opt/new_timezone/australia"
echo "$AUSTRALIA" > "${australia}"

EUROPE=$(timedatectl list-timezones | grep Europe)
echo "6) Europe"
europe=$"/opt/new_timezone/europe"
echo "$EUROPE" > "${europe}"

echo -n "Enter your choices from [1-6]: "

while read -r choice; do

# case statement is used to compare one value with the multiple cases.

case $choice in

# Pattern 1
1) echo "$ASIA";;

# Pattern 2
2) echo "$AFRICA";;

# Pattern 3
3) echo "$AMERICA";;

# Pattern 4
4) echo "$ANTARCTICA";;

# Pattern 5
5) echo "$AUSTRALIA";;

# Pattern 6
6) echo "$EUROPE";;

# Pattern 7
q) echo "Quit"
   exit;;

# Default Pattern
*) echo "Invalid Option"

esac
   echo -n "Enter your choices from [1-6]: "
done

