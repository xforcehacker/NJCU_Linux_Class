while read -n1 c
do
    echo "$c"
done < other | sort | uniq -c | sort -nr
