#!/bin/bash

for x in {1..5}
do
	for y in {1..5}
	do
		z=$((x*y))
		echo $z
	done
done
