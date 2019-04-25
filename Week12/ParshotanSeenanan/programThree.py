#!/usr/bin/python3

import time
import random

password = ""

for i in range(100):
    d = random.randint(65, 122)
    c = chr(d)
    password += c
    time.sleep(10)

fout = open("/opt/programThree.log", "a")
fout.write(password)
fout.close()

