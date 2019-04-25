#!/bin/bash

motds=('Today is going to be a good day for you' 'Today is going to suck' 'Howdly Doodly Partner' 'If there is no pain, there is no gain' 'you either live long enough to become a villian or die a hero')

#echo ${motds[*]}
#echo ${motds[1]}

FLOOR=0
CEILING=2
RANGE=$(($CEILING-$FLOOR+1));

RESULT=$RANDOM;

let "RESULT %= $RANGE";
RESULT=$(($RESULT+FLOOR));

motd=${motds[($RESULT)]} 
echo $motd> /etc/motd

