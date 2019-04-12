for i in $@
do
	grep $i ASCII.txt >> temp
done

awk -f AWK.awk output.txt

rm output.txt
