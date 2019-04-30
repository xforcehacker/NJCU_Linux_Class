#!/bin/bash
d=$(date +%Y-%m-%d-%s)
echo "$d" >> ~/"$d".log
exit 0
