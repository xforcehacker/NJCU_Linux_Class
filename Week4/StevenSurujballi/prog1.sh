#!/bin/bash

#write a bash program that uses a while loop

count=0

while [ $count -le 10 ]
do 
	echo $count
	count=$[$count + 1]
done

