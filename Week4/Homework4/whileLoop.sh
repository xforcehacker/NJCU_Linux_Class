#!/bin/bash

i=10
while [ $i -le 60 ] 
do 
	echo $i
	i=$[$i+10]
done

# this while loop as long as i is less than or equal to 60 the print out i and add 10 to the new i.
