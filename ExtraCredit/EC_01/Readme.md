# Extra credit one

This homework has three parts. I will replace your worst grade with the grade from this assignment, if it is an improvement. 
Due no later than April 11th 2019 by 7:00 PM, no ifs, ands, buts, or strange technical circumstances requiring late submission! 
Submit as a pull request with the following directory structure:

```
NJCU_Linux_Class/ExtraCredit/EC_01/YourName/YourStuff
```

## Part One

Create a patterns.txt file to work with the provided script.sh. 
The output in the terminal should be:

4  
3  
2  
1  
0  

Each iteration of the while loop should delete one line from file.txt based on a regular expression you write into patterns.txt.

## Part Two
Write 5 different bash one liners that use 3 pipes each.

e.g.

```
echo hello | cut -c 1 | md5sum | less
```

## Part Three
program.py writes to both standard out and standard error. Run program.py in such a way that two files are created - stdout.txt and stderr.txt. The contents of stdout.txt should containthe stdout output for program.py. The contents of stderr.txt should contain the stderr output from program.py.

## How to submit. 
Create a directory under EC_01 with your name. Inside the directory there should be three files: 

1. patterns.txt
2. bashOneliners.sh
3. redirect.sh

Everyone should have a different #2. 
