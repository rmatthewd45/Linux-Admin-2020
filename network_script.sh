#!/bin/bash

#Script that outputs useful network info, then appends it to a textfile with the date as the name


echo "Network interface configurations"
ifconfig

echo "IP routing table"
netstat -r

echo "Transmission protocol - Ports"
netstat

echo "DNS info"
cat /etc/resolv.conf


#Create file with date as the name
touch "$(date +"%m%d%Y")_NetworkInfo"

#Append commands to the file we created
ifconfig >> "$(date +"%m%d%Y")_NetworkInfo"
netstat -r >> "$(date +"%m%d%Y")_NetworkInfo"
netstat >> "$(date +"%m%d%Y")_NetworkInfo"
cat /etc/resolv.conf >> "$(date +"%m%d%Y")_NetworkInfo"
