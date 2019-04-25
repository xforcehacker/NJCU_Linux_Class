#!/usr/bin/python
import time
with open('/opt/loud.log', 'a') as fout:
    while 1:
        fout.write("THIS SERVICE IS LOUD\n")
        time.sleep(10)
        fout.flush()
