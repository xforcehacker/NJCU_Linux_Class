while read line
do
        noNewLine=$( echo $line | tr -d "\n")
        echo "grep -v \"$noNewLine\" file.txt > output.txt "
        grep -v "$noNewLine" file.txt > output.txt
        mv output.txt file.txt
        wc -l file.txt
done < patterns
