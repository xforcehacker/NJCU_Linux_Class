#!/bin/bash

awk '/\320\244\321\221\320\264\320\276\321\200/ {print "Fyodor"}' sample_text.txt
awk '/\x72\x65\x63\x6f\x72\x64\x61\xC3\xA7\xC3\xA3\x6F/ {print "memory"}' sample_text.txt
awk '/\156\151\303\261\157/ {print "boy"}' sample_text.txt
gawk '/^(\xF0\x9F\x98\x82){3,5}$/ {print "found ROFL"}' sample_text.txt

echo "-------------------------------------------"

sed -n 's/\o320\o244\o321\o221\o320\o264\o320\o276\o321\o200/Fyodor/p' sample_text.txt
sed -n 's/\x72\x65\x63\x6F\x72\x64\x61\xC3\xA7\xC3\xA3\x6F/memory/p' sample_text.txt
sed -n 's/\o156\o151\o303\o261\o157/boy/p' sample_text.txt
sed -n 's/\(\xF0\x9F\x98\x82\)\{3,5\}/found ROFL/p' sample_text.txt


