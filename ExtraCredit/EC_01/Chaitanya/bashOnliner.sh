cat /etc/passwd | tr -d "/" | cut -f 3 | head -5
ps -aux | grep python | cut -c 10-14 | grep "[13579]$" | xargs kill -STOP
cat /etc/passwd | grep root | wc -l
cat country.txt | grep "Dubai" | tee file2.txt | wc -l
ls -l | find ./ -type f -name "*.txt" -exec grep "program" {} \;
