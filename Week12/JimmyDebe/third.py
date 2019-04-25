#!/usr/bin/python

import time
with open('/opt/thrid.log', 'a') as fout:
  while 1:
    fout.write("Whoppy Whop")
    time.sleep(20)
