#!/bin/bash

echo -e "\n\e[1;4;5mMark's AWK and SED Program\e[0m"

echo -e "\n\t\e[1;31;7m    AWK    \e[0m"
awk '/\320\244\321\221\320\264\320\276\321\200/ {print "\tFyodor"}' sample_text.txt 
awk '/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/ {print "\tmemory"}' sample_text.txt 
awk '/\156\151\303\261\157/ {print "\tboy"}' sample_text.txt
awk '/(\xf0\x9f\x98\x82){3,5}/ {print "\tfound ROFL!"}' sample_text.txt

echo -e "\n\t\e[1;7m    SED    \e[0m"
sed -n 's/\o320\o244\o321\o221\o320\o264\o320\o276\o321\o200/\tFyodor/p' sample_text.txt
sed -n 's/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/\tmemory/p' sample_text.txt
sed -n 's/\o156\o151\o303\o261\o157/\tboy/p' sample_text.txt
sed -n 's/\(\xf0\x9f\x98\x82\)\{3,5\}/\tfound ROFL!/p' sample_text.txt
