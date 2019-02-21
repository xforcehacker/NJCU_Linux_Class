#!/bin/bash

term="0" #no terminals open

while [ $term -lt 2 ] #while terminal is less than 2
do
gnome-terminal & #open gnome terminal until amount specified is reached
term=$[$term+1]
done 
