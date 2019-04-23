#!/bin/bash
echo "====== AWK form ======"
awk  '/\320\244\321\320\276\321\200/ {print "Fyodor"}' UTF8.txt
awk  '/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/ {print "Memory"}' UTF8.txt
awk  '/\156\151\303\261\157/ {print "boy"}' UTF8.txt
awk  '/\xF0\x9F\x98\x82/ {print "found ROFL  Laughing"}' UTF8.txt
awk  '/\xFO\x9F\x98\xA2/ {print "found ROLF Crying"}' UTF8.txt


echo "====== SED  form ======"

sed -n 's/^.*\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f.*$/Memory/p' < UTF8.txt
sed -n 's/^.*\xf0\x9f\x98\x82.*$/found ROLF Laughing \xf0\x9f\x98\x82/p' < UTF8.txt
sed -n 's/^.*\xf0\x9f\x98\xa2.*$/found ROFL Crying \xf0\x9f\x98\xa2/p' < UTF8.txt
