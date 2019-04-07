command | tee ~/file.txt


$ ./command file1 file2 file3 > log-file 2>&1
$ cat log-file
stderr file2
stdout file1
stdout file3