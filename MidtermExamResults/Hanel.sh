while read -n1 line
do
    echo $line
done < $1 | grep '[[:alpha:]]' | sort | uniq -c | sort -nr
