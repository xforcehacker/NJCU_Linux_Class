declare -A hashMap

filename=$1
while read line; do
    for (( i=0; i < ${#line}; i++)); do
        ((hashMap["${line:$i:1}"]++))
        n=${line:$i:1}
        echo $n
    done
    echo "###################################"
done < $filename

for k in "${!hashMap[@]}"
do
    echo "$k->"${hashMap[$k]}
done
    
for k in "${!hashMap[@]}"
do
    string=""
    n=0
    for ((i=0; i<${hashMap[$k]}; i++)); do
    #for((i=0; i<10; i++)); do
        string+="#"
        ((n++))
    done
    echo "$k $string $n"
done | sort -rn -k3
