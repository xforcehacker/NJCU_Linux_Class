chars=({a..z})
count=1
for char in ${chars[@]}
do
    for((i=0; i < count; ++i))
    do
        echo -n $char
    done
    echo ""
    ((count++))
done
