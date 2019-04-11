#!/bin/bash
for any in $@
do
                grep $any asciiNumbers.txt >> del.txt
        done
        awk -f getAscii.awk del.txt
        cat del.txt
        rm del.txt
