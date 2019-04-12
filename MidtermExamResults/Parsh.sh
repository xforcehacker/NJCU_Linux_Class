index=26
declare -A arr
for x in {a..z}
do
    $arr={grep -oi $x $1 | wc -l}
done
echo $arr
