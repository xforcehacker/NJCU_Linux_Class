#
# This file implements the right endpoint rule to integrate y = x^3 + (2.6*x) - 11.7 on the domain [0,10]
# The expected area under the curve is 2513.
# To run this code and verify it is correct:
# 1. run the point generation script. See the comments in that file for instructions.
# 2. Run this code: awk -f example_integral.awk x.coords
BEGIN { AREA=0 }
function line( x){
        return (x^3)+(2.6*x)-11.7
}
{
        if ( NR == 1){
                prev = $0
        }
        else {
                delta = $1 - prev
                y = line($1 - delta)
                AREA += delta * y
                prev = $1
        }
}
END { print "The computed area using the left endpoint rule is", AREA }
