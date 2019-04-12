declare -A arr
for x in {a..z}
do
    arr[$x]=$(grep -oi $x $1 | wc -l)
done

max=26
arr_sorted=$(
for y in ${!arr[@]}
do
    echo $y ${arr[$y]}
done | sort -rn -k2 | cut -b1)

for z in ${arr_sorted[@]}
do
    current=0
    echo "$z $(
    while [ $current -lt $max ]
    do
        echo -n "#"
        ((current++))
    done )"
    ((max--))
done
