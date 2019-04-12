if [ "$1" == "" ]
then 
    echo "please select a file"
    exit
fi

file=$1
awk -vFS="" '{ 
                for(i=1; i<NF;i++) {
                    if ($i ~ /[a-zA-Z]/){
                        w[tolower($i)]++
                    }
                }
               }
               END { for ( i in w ) print w[i], i }' $file > stevenTemp

sort -rn stevenTemp | awk '{ print $2 " " $1}' > stevenTemp2

while read line; do
    linearr=($line)
    printf ${linearr[0]}
    printf " "
    n=${linearr[1]}
    for i in $( eval echo "{1..$n}")
    do
        printf "#"
    done
    echo "... {$n #s}"
done < stevenTemp2
