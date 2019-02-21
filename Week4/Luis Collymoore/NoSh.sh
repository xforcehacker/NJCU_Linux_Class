#!/bin/sh
# Basic if statement

echo "Insert a number from 0 to 100"
num=$(read line)
    if [ $num > 100 ];
    then
    echo "There is something wrong here."
elif [[ $num < 100 ]];
then
echo "Hey, That's a large number you are comparing there"
else
pwd
date
fi
