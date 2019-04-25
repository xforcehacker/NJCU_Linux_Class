#!/usr/bin/python

import time

placeholder = 0
for i in range(101):
    placeholder += 1
    if placeholder == 50:
        with open('/opt/programOne.log', 'a') as fout:
            fout.write("Halfway There")
            time.sleep(30)
    elif placeholder == 100: 
        with open('/opt/programOne.log', 'a') as fout:
            fout.write("Done")
            time.sleep(30)
            break

