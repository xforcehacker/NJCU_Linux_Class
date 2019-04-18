#!/bin/bash
awk '/\320\244\321\221\320\264\320\276\321\200/ {print "Fyodor"}' sampleFile.txt
awk '/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/ {print "memory"}' sampleFile.txt
awk '/\156\151\303\261\157/ {print "boy"}' sample_text.txt
awk '/\xf0\x9f\x98\x82/ {print "found ROFL!"}' sampleFile.txt
awk '/\xF0\x9F\x98\xAD/ {print "found ROFL!"}' sampleFile.txt
sed -n 's/\o320\o244\o321\o221\o320\o276\o321\o200/Fyodor/p' sampleFile.txt
sed -n 's/^.*\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f.*$/memory/p' < sampleFile.txt
sed -n 's/\o156\o151\o303\o261\o157/boy/p' sampleFile.txt
sed -n 's/^.*\xf0\x9f\x98\x82\.*$/found ROFL/p' < sampleFile.txt
