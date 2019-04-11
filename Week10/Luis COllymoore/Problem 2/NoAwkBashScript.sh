#!/bin/bash

for i in $@
do
	grep $i asciiTable >> temp
done

awk -f ScriptAwk temp

rm temp
