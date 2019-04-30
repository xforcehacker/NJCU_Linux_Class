#!/bin/bash
now=$(date +"%T")
DATE=`date '+%Y-%m-%d %H:%M:%S'`

echo "Example 3rd service started at ${DATE}" | systemd-cat -p info
x=1
while [ $x -le 5 ]
do
  echo "Third Loop started at ---> $now"
  x=$(( $x + 1 ))
sleep 10;

done
echo " the loop ended "


