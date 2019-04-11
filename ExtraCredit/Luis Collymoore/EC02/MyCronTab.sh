#!/bin/bash

path=backups 'date +\_%m_%d_\%Y\%H\hr.tar'
cd / ; sudo mkdir backups
tar vcf /$PATH /home/dedseq/Desktop; mv -r /$PATH /backups
