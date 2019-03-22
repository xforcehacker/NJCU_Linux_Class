#!/bin/bash
#
# has an input based on if its a string or an even/odd number

re='^[0-9]+$'
if ! [[ $1 =~ $re ]] 
then
	echo "0"
	exit 0
fi

if [ $(($1%2)) -eq 0 ]
then
	echo "1"
	exit 0
fi

if [ $(($1%2)) -ne 0 ]
then
	echo "2"
	exit 0
fi
