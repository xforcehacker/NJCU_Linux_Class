i=0

while [ $i -lt 10 ]
do
 if test $i -eq 7
 then
  echo "Feeling lucky punk!"
 fi
 
 echo $i
 
 i=$[$i+1]
done
