ps -aux | grep python | cut -d" " -f1 #find the name of users runing processes with python in the name
cat file.txt | grep name | xargs mkdir # final all lines in file.txt with name in them and make a directory with that line
awk -f script input | sort -nr -k2 | cut -d" " -f1  # actually used this one to analyze some program output
netstat | grep CONNECTED | sort
man man | head | grep interface

