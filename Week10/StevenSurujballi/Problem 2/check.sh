echo 'INPUT BINARY   DECIMAL HEX DESCRIPTION'
for i; 
do 
	binary=`echo -n "$i" | xxd -b | awk '{print $2}'`
    printf "%-5c %s %-7d %02x  The letter %c in ascii encoding\n" "$i" "$binary" "'$i" "'$i" "$i"
done