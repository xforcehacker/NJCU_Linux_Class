
#!/bin/bash

echo "<<<AWK>>>"
awk '/\320\244\321\221\320\264\320\276\321\200/ {print "Fyodor"}' words.txt
awk '/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/ {print "memory"}' words.txt
awk '/\156\151\303\261\157/ {print "boy"}' words.txt
awk '/\xf0\x9f\x98\x82/ {print "found ROFL!"}' words.txt

echo "<<<SED>>>"
sed -n 's/\o320\o244\o321\o221\o320\o276\o321\o200/Fyodor/p' words.txt
sed -n 's/^.*\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f.*$/memory/p' <  words.txt
sed -n 's/\o156\o151\o303\o261\o157/boy/p' words.txt
sed -n 's/^.*\xf0\x9f\x98\x82\.*$/found ROFL/p' < words.txt
