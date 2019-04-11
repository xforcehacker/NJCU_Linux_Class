1)$cat sample.txt | grep "example word" | tee file2.txt | wc -l
//this pipe searches a file, puts those words into a new file and outputs the total number of lines.

2)$cat sample2.txt | head -7 | tail -5 | wc -w
// this pipe selects the first 7 and last 5 lines of a file and counts the words

3)cat sample.txt | grep -i a | wc -w | wc-l
searches file for "a" and displays the amount of words and lines with "a"

4) cat sample.txt | grep -i a | head | tail 
shows the first and last lines which contain an "a"

5) cat sample.txt | head -7 | tail -5 | tee sample2.txt
takes the first 7 and last 5 lines and dumps into new file
