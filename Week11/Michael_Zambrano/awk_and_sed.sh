#!/bin/bash 

awk '{ gsub("\320\244\321\221\320\264\320\276\321\200","Fyodor");gsub("\x72\x65\x63\x6f\x72\x64\x61\xc3\xa7\xc3\xa3\x6f","memory");gsub("\156\151\303\261\157","boy");gsub("\xf0\x9f\x98\x82\xf0\x9f\x98\x82\xf0\x9f\x98\x82","found ROFL!"); print}' sample_text.txt

