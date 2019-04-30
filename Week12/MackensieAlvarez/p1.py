#!/usr/bin/python
import time

for i in range(100):
	if i % 2 == 0: 
		 with open('/opt/p1.log', 'a') as fout:
            	 	fout.write("Found even number")	
