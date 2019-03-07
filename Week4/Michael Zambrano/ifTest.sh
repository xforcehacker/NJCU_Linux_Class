#!/bin/bash
expectedSum=213b8d4956b9243af7d13d0f2a8ef8d3
zipURL=https://github.com/melvyniandrag/lorem/archive/master.zip
zipName=master.zip
unzippedName=lorem-master

wget $zipURL
echo $? > answer.txt

if grep -Fxq "0" answer.txt
then 
	echo "Success file downloaded !!"
else
	echo "Error downloading file"
    	exit 1;
fi 
