#!/bin/bash
INPUT_FILE="file.txt"
TMP_FILE="output.txt"
PAT_FILE="patterns.txt"
while read line
do
	noNewLine=$(echo $line | tr -d "\n" )
	grep -v "$noNewLine" $INPUT_FILE > $TMP_FILE
	mv $TMP_FILE $INPUT_FILE
	wc -l $INPUT_FILE
done < $PAT_FILE
