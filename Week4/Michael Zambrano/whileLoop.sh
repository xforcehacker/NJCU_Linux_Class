#!/bin/bash
ps -e | awk '/ython/ {print $1 }' | grep [24680]$ > even.txt; cat even.txt # count even numbers
while read e; do 
    echo "$e" | xargs kill -CONT 
done < even.txt
