#!/bin/bash

x=0
while [ true ]
do
	echo $x >> /opt/bash_increment.log
	x=$((x + 1))
	sleep 10
done

