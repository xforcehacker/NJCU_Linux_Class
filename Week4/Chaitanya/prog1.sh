#!/bin/bash
while :
do
	read -p "Enter two number (-1 to quit): " a b
	if [ $a -eq -l]
	then
		break
	fi
	ans=$((a+b))
	echo $ans
done

