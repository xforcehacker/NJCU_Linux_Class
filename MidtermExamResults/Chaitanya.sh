filename=$1

sed 's/\(.\)/\1\n/g' $filename | tr '[:upper:]' '[:lower:]' | grep '[a-z]' | sort | uniq -c | sort -nr -k1 > temp

while read -a line;
do
    echo -n  "${line[1]}"
    len=${line[0]}
    for((i=0; i<$len;++i))
    do
        echo -n "#"
    done
    echo ""
done < temp
#rm temp
