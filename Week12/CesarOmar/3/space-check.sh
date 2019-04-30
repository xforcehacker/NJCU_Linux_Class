#!/bin/bash

date > /root/disk_space_report.txt
du -sh /home/ >> /root/disk_space_report.txt

#you can add any txt file you want

