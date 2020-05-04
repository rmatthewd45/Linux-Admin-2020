#!/bin/bash

#This script is a collection of commands that will display useful network info and dump it to a file for you. It is to be run in your home directory.
echo "Network interface configurations"
echo "--------------------------------"
#display network configs, including ip address
ifconfig
echo "--------------------------------"
echo "IP routing table"
echo "--------------------------------"
#display ip routing tables
netstat -r
echo "--------------------------------"
echo "Transmission protocol - Ports"
echo "--------------------------------"
#display ports
netstat
echo "--------------------------------"
echo "DNS"
echo "--------------------------------"
#display dns
cat /etc/resolv/conf

#creates directory as needed for the output file...
mkdir -p NetworkInformation

#creates a file using the date as a filename...
touch NetworkInformation/"$(date +"%m%d%Y")_NetworkInfo"

#dumps previous info to file...
ifconfig >> "$(date +"%m%d%Y")_NetworkInfo"
netstat -r >> "$(date +"%m%d%Y")_NetworkInfo"
netstat >> "$(date +"%m%d%Y")_NetworkInfo"
cat /etc/resolv.conf >> "$(date +"%m%d%Y")_NetworkInfo"

