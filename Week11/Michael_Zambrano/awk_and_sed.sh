#!/bin/bash 
echo " " 
echo "This will be AWK"
echo " "
awk '{ gsub("\320\244\321\221\320\264\320\276\321\200","Fyodor");gsub("\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f","memory");gsub("\156\151\303\261\157","boy");gsub("\xf0\x9f\x98\x82\xf0\x9f\x98\x82\xf0\x9f\x98\x82","found ROFL!"); print}' sample_text.txt
echo "-----------------------------------------------------------------------"
echo " "
echo "This will be SED"
echo " "
sed -n 's/\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f/memory/p; s/\o320\o244\o321\o221\o320\o264\o320\o276\o321\o200/Fyodor/p; s/\o156\o151\o303\o261\o157/boy/p; s/\xf0\x9f\x98\x82\xf0\x9f\x98\x82\xf0\x9f\x98\x82/found ROFL!/p' sample_text.txt 
