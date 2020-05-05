#/bin/bash

echo "Starting system health check.."
last
#to display the last users logged onto the system
echo "------------------------------"
free
#display amount of free memory left in the system
echo "------------------------------"
iostat -p sda
#monitor disk activity
echo "------------------------------"
ps aux --sort -%mem | head -10
#show active processes, sorted by top 10 highest memory usage
echo "------------------------------"
ls -laSh
#show files in current directory sorted by file size


#dump all to a file within the directory the script is called
touch networkCheck
last >> networkCheck
free >> networkCheck
iostat -p sda >> networkCheck
ps aux --sort -%mem | head -10 >> networkCheck
ls -laSh >> networkCheck