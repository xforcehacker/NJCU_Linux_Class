#!/bin/bash

#Searches Man Pages and Presents a PDF
man -k . | awk '{ print $1 " " $2 }' | dmenu -i -p man | awk '{ print $2 " " $1 }' | tr -d '()' | xargs man -t | ps2pdf - - | zathura -

#Lists IP addresses connected to your server on Port 80
netstat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr |head

#Converts text from decimal to little endian hexadecimal 
echo $(printf %08X 256 | grep -o .. | tac | tr -d '\n')

#Md5sum the last 5 Files in a Folder
find /directory1/directory2/ -maxdepth 1 -type f | sort | tail -n 5 | xargs md5sum

#Getting MAC Address from default interface OS X
netstat -rn | awk '/default/ { print $NF }' | head -1 | xargs -I {}  ifconfig {} | awk '/ether/ {print $2}'


