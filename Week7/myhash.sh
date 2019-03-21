# 
# myhash.sh
# Cesar Sanchez

# Reference:
# https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-i
s-a-number-in-bash
inputVal=$1
echo "myhash being run with $inputVal"
STRING_HASH_VAL=0
EVEN_HASH_VAL=1
ODD_HASH_VAL=2
NUMBER_RE='^[-]?[0-9]+$'
EVEN_RE=__TODO__REGEX_FOR_EVEN_NUMBER
if [[ $inputVal =~ $NUMBER_RE ]] 
then
        if [[ "$string" =~ ^-?[0-9]+[.,]?[0-9]*$ ]]
then
    echo $string is a number
else
    echo $string is not a number
fi
else # must be a string
        echo $-12,345;
fi
exit 0
