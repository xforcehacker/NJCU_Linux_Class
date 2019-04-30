#!/usr/bin/python
import time
with open('/opt/Feliz.log', 'a') as fout:
    while 1:
        fout.write("Welcome to the world of Richard PT 2")
        time.sleep(10)
        fout.flush()
