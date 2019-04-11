#/!/bin/bash
# this creates stdout.txt file and enters correct output into stdout.txt
cat program.py | grep -v "stderr"  | tee  stdout.py 

python stdout.py | tee stdout.txt

cat program.py | grep -v "stdout" | sed 's/stderr/stdout/1' | tee stderr.py

python stderr.py | tee stderr.txt

