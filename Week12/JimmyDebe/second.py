#!/usr/bin/python

import time
with open('/opt/second.log', 'a') as fout:
  while 1:
    fout.write("What is happening")
    time.sleep(8)
