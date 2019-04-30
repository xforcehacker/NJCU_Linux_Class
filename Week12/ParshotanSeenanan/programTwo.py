#!usr/bin/python3

import urllib.request 
import urllib.parse

try:
    url = 'http://www.pythonchallenge.com/pc/def/linkedlist.php?nothing='
    number = str(12345)

    for numb in range(400):
        x = urllib.request.urlopen(url + number)
        output = str(x.read())
        placeholder = str()

        for char in output:
            if char.isdigit():
                placeholder = placeholder + char

        fout = open("/opt/programTwo.log", "a")
        fout.write("The numbers are: " + placeholder)
        fout.write("The loop is: " + str(numb))
        fout.close()

        if numb == 84:
            number = str(int(int(placeholder)/2))
        elif numb == 139:
            number = str(63579)
        else:
            number = placeholder
except Exception as e:
    print(str(e))






