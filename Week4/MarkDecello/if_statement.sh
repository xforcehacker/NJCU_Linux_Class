#!/bin/bash

echo "What is 4 + 4?"

read ans

if test $ans -eq 8
then
	echo "You got the correct answer!"
else
	echo "Wrong answer!"
fi
