#!/bin/bash

for i in $@
do
	grep $i ascii >> find_letter
done
#run the awk script 
awk -f program.awk find_letter

rm find_letter

