# Run this before running the integral script
# dump the output to a file called x.coordinates
# then run the integral script as 
# >>> awk -f integral_script.awk x.coordinates
BEGIN {
        for ( i = 1; i <= 10000; ++i )
                print i * 0.0001
}
