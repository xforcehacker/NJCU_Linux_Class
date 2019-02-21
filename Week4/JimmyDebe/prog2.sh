#!/bin/bash

school=("is" "so" "much" "fun")
i=0

for i in "${school[@]}"
do
	echo "{ $school[$i-1]}"
done
