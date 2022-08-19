#! /bin/bash

#nmap -T4 -A -p 21,22,23,25,53,80,443,110,139,445,143,67,68,69,161,500,3389 nmap.org | grep "/tcp" | grep "open" 


echo " ________  ________  ________  ________  ________  ________       ";
echo "|\   __  \|\   __  \|\   ____\|\   ____\|\   __  \|\   ___  \     ";
echo "\ \  \|\  \ \  \|\  \ \  \___|\ \  \___|\ \  \|\  \ \  \\ \  \    ";
echo " \ \  \\\  \ \   ____\ \_____  \ \  \    \ \   __  \ \  \\ \  \   ";
echo "  \ \  \\\  \ \  \___|\|____|\  \ \  \____\ \  \ \  \ \  \\ \  \  ";
echo "   \ \_______\ \__\     ____\_\  \ \_______\ \__\ \__\ \__\\ \__\ ";
echo "    \|_______|\|__|    |\_________\|_______|\|__|\|__|\|__| \|__| ";
echo "                       \|_________|                               ";
echo "                                                                  ";
echo "                                                                  ";


if [ "$1" == "" ]
then
echo "Enter -h for help"

else
if [ "$1" == "-h" ]
then
echo "Enter IP Address or Domain Name"

else
echo "Top 1000 Open Known Port Scan"
nmap -T4 -A --top-ports 1000 $1 | grep "/tcp" | grep "open"
fi
fi
