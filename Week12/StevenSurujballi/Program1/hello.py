#!/usr/bin/python

import time
with open('/opt/hello.log','a')as fout:
    while 1:
        fout.write("hello world")
        time.sleep(10)
