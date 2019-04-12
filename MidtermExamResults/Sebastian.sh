filename=$1
sed 's/\(.\)/\1\n/g' $filename | tr '[:upper:]' '[:lower:]' | grep '[a-z]' | \
    sort -i | uniq -c > temp

while read -a line string
do
    echo -n ${string[0]}
done < temp
