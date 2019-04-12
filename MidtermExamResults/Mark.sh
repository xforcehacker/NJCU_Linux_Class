filename=$1
char=({a..z})
arr=()
for i in {0..25}
do
    x=$x#
    arr[$i]=$(echo "${char[i]} $x `grep -io "${char[i]}" $filename | wc -l`")
    echo "${arr[i]}"
done | sort -nrt ' ' -k3 1> output.txt

paste -d' ' <(cut -d' ' -f1 output.txt) <(cut -d' ' -f2 output.txt | sort -nr -k3)
