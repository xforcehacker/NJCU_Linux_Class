cat test.txt | grep -i a | head | wc

find -type f -printf "%s\t%p/n" | sort -h -r | head -15 | xargs rm -rf

find -type f | sort -h | tail -15 | cat

cat test.txt | grep roxy | xargs mkdir

cat test.txt | grep where | wc -l | tail -5
