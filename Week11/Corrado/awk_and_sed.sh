awk ' %o /2044 2121 2064 2076 2100/ {print "Fyodor"}'  sample_text.txt
awk '%x /72 65 63 6f 72 64 61 e7 e3 6f/ {print "memory"}' sample.txt
awk '%o /156 151 361 157/ {print "boy"}' sample.txt

sed 's/\o2044 2121 2064 2076 2100/Fyodor' sample_text.txt
sed 's/\x72 65 63 6fn 72 64 61 e7 e3 6f/memory' sample_text.txt
sed 's/\o156 151 361 157/boy' sample_text.txt
