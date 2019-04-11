#!/bin/bash


awk -F, '{ print $3, $0 }' user.csv | sort | sed 's/^.* //'

#use awk to put the user id in front then  sort it and remove the duplicates

 tr -dc 'a-zA-Z0-9~!@#$%^&*_()+}{?></";.,[]=-' < /dev/urandom | fold -w 32 | head -n 

#generate a random 32 character password

 $ netstat -tn 2>/dev/null | grep :80 | awk '{print $5}' | cut -d: -f1 | sort | uniq -c | sort -nr | head
#list ip addresses connected on your port 80

 $ lsof -i :8080 | awk '{l=$2} END {print l}' | xargs kill

#kill all process running on port 8080

 $ ifconfig -a | grep -Po '\b(?!255)(?:\d{1,3}\.){3}(?!255)\d{1,3}\b' | xargs nmap -A -p0-


#nmap scan every interface that is assigned an ip

