#!/bin/bash

for i in $@
do
	grep $i asciiTable >> temp
done

awk -f ascii.awk temp

rm temp
