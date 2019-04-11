#!/bin/bash

#1 looks for spaces, replces with new lines, sorts, returns the number of lines
echo "my ID is 0347425" | tr [:space:] '\n' | sort | wc -l
#2 looks for everything in directory, sorts, then displays anything  that contains "Week" in the last 20 files/directories
ls /home/lelunededoom/ | sort | tail -n20 | grep Week
#3 returns number of empty files
du -a /home/lelunededoom | find . -empty | sort -r | wc -l

#4 looks for .txt files in home directory that are not in any Week directory, returns files with 30 lines
find /home -type f -name "*.txt" | grep -v Week | xargs wc -l | grep 30

#5 changes the numbers in patterns.txt and adds changes to a new file, newpatterns.txt given that this is part 2 of EC1 its implied that patterns.txt is saved in this directory
cat patterns.txt | grep [[:digit:]] | sed 's/9/666/g' | tee newpatterns.txt
