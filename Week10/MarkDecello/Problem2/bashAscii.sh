#!/bin/bash

for i in $@
do
	grep $i ascii.txt >> outfile.txt
done

awk -f getAscii.awk outfile.txt

cat outfile.txt
rm outfile.txt
