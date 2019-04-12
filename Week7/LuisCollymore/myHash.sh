
# myhash.sh
# Luis Collymoore
# March 21st 2019
#
# Reference:
# https://stackoverflow.com/questions/806906/how-do-i-test-if-a-variable-is-a-number-in-bash-inputVal=$1
#$(( $n % 2 ))
echo "Type a number you want to verify whether is even or odd, followed by [ENTER]:"
read number
#myhash being run with $inputVal
inputVal=$number
STRING_HASH_VAL=0
EVEN_HASH_VAL=1
ODD_HASH_VAL=2
NUMBER_RE='^[-]?[0-9]+$'
EVEN_RE=0
if [[ $inputVal =~ $NUMBER_RE ]]
then
        if [[ $inputVal%2 -eq $EVEN_RE ]]
        then
                echo $EVEN_HASH_VAL
        else # must be odd
                echo $ODD_HASH_VAL
        fi
else # must be a string
        echo $STRING_HASH_VAL;
fi
exit 0
