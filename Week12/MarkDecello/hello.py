#!/usr/bin/python

import time

with open("/opt/hello.log", 'a') as fout:
    while True:
        fout.write("hello\n")
        time.sleep(10)
        fout.flush()
