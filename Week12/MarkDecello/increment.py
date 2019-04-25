#!/usr/bin/python3

import time

x = 0
with open("/opt/increment.log", 'a') as fout:
    while 1:
        x = x + 1
        fout.write(str(x))
        fout.write("\n")
        time.sleep(10)
        fout.flush()
