#!/bin/bash

tar -cvf /backups/temp.tar /home

currDate=$(date)

month="_$(echo $currDate | cut -d" " -f2)"
#echo $month
day="_$(echo $currDate | cut -d" " -f3)"
#echo $day
year="_$(echo $currDate | cut -d" " -f6)"
#echo $year
hour="_$(echo $currDate | cut -d" " -f4 | cut -d":" -f1)"
#echo $hour

newName="backup$month$day$year$hour.tar"
mv /backups/temp.tar /backups/$newName

