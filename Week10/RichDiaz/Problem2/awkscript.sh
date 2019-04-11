#!/bin/bash

for i in $@
do 
	grep $i Ascii-table >> temp
done

awk -f awkAscii temp

rm temp
