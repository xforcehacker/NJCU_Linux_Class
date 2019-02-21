#Only Works With Bash not Shell

arr=(1 2 3 3 2 1)

for i in ${arr[@]} 
do 
	echo $i
done
