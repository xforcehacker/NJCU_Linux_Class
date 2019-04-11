#!/bin/bash

for i in $@
do
	grep $i asciiTable.txt >>  output.txt
done

awk -f ascii.awk output.txt

rm  output.txt
