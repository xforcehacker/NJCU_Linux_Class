#!/bin/bash
now=$(date +"%T")
DATE=`date '+%Y-%m-%d %H:%M:%S'`

echo "Example 1st service started at ${DATE}" | systemd-cat -p info
x=1
while [ $x -le 5 ]
do
  echo "First Loop started at ---> $now"
  x=$(( $x + 1 ))
sleep 10;

done
echo " the loop ended "


