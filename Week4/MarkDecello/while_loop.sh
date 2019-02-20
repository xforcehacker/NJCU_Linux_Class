#!/bin/bash

echo "I'm choosing a number from 1 to 10"
echo "can you guess what number it is?"

read num

while [ $num -ne 7 ]
do
	echo "Please try again!"
	read num 
done

echo "Congratulations! You guessed my number!"
