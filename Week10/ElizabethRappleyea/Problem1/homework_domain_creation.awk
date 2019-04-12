# Run this before running the integral script
# dump the output to a file called x.coordinates
# for example:
# >>> awk -f example_domain_creation.awk > x.coordinates
#
# then run the integral script as 
# >>> awk -f integral_script.awk x.coordinates

BEGIN {
        NUM_X = 100000
        START_X = 0
        END_X = 10
        DELTA = ( END_X - START_X ) / NUM_X
        for ( i = START ; i <= NUM_X; ++i )
                print i * DELTA
}
