#!/usr/bin/python

import time
with open('/opt/duh1.log', 'a') as fout:
  while 1:
    fout.write("Man on the moon")
    time.sleep(16)
