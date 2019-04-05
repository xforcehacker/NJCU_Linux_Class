# Awk ( And maybe bash ) homework

## Problem 1
In class we approximated the integral of a function (the area under the curve) using an endpoint rule. See the example
presented in class and the associated notes. For homework, write an awk program that uses the left endpoint rule to integrate the
function

y = x^3 + 2.6*x - 11.7 on the domain [0,10]

The correct answer is 2513.

Supply the function with an increasing number of datapoints as we did in class and show that the approximation converges to the
real value of the area of the curve. And it has to be the correct value.

## Problem 2
Write a command line program that takes a list of space-delimited argument and behaves as follows:

```
$./myprogram a b
INPUT BINARY   DECIMAL HEX DESCRIPTION
a     01100001 97      61  The letter a in ASCII encoding
b     01100010 98      62  The letter b in ASCII encoding
``` 

Make sure the output is left-aligned with the column headers. Also, the input should only accept the following 27 characters:
a-z
? 

You don't need to include error handling of unacceptable characters. So you can assume the program will never be run as:

```
$./myprogram [ { ( ) ^ %
```

because the above is invalid input. I don't care how your program handles invalid input.

I envision a solution to this problem using bash and awk. Most obviously, bash can take the command line args $1 $2 $3 etc.
and echo >> them into a file. Then an awk program runs on that file. The program has a "BEGIN" pattern/action that prints the
table header and possibly creates an associative array mapping letters to the output string. For this you might use sprintf to
create strings with the proper width. 

Submission guidelines:
1. Pull request by 7PM on 4-11
2. Programs and data files for each of the two problems
3. Snapshot of each program in action and showing that it works
4. As usual all files go under a directory with your name under the appropriate week.
