#
# EC01 question 1
#
# To Do:
# Create a patterns.txt file that will cause this script to output
# 
# 4
# 3
# 2
# 1
# 0
#
# Note: Depending on the implementation of 'wc' on your system you might
# need to pipe the output of `wc -l $INPUT_FILE' to cut to make sure you print only
# the 4, 3, 2, 1, 0 and not the file name also. If you see: '4 file.txt'. 
# you need to cut the output from 'wc'.
#
# This script loops over the regex patterns in $PAT_FILE and deletes a matching
# line from file.txt each iteration. After every deletion, the script prints
# to the terminal the number of lines remaining - hence 4, 3, 2, 1, 0.
#
# Note 2: As you test this you will delete the lines in file.txt. There is a copy 
# of file.txt in backupfile.txt, so you can always copy it back.

INPUT_FILE="file.txt"
TMP_FILE="output.txt"
PAT_FILE="patterns.txt"

while read line
do
        noNewLine=$( echo $line | tr -d "\n")
        grep -v "$noNewLine" $INPUT_FILE > $TMP_FILE
        mv $TMP_FILE $INPUT_FILE
        wc -l $INPUT_FILE
done < $PAT_FILE
