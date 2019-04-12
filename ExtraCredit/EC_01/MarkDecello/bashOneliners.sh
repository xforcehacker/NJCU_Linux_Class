ls | grep .awk | cut -d"." -f1 | sort -r

echo Hello World! | cut -d"!" -f1 | awk '{print($1)}' | wc

echo write a bash oneliner > outfile.txt | cat outfile.txt | awk '{print $3,$4}' | cut -c 1-8

ls | grep awk | head -n3 | tail -n1

ps | grep bash | cut -c1-5 | grep [24680]$
