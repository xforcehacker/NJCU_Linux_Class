#
# This file implements the right endpoint rule to integrate y = 1x + 0 on the domain [0,1]
# The expected area under the curve is 0.5.
# To run this code and verify it is correct:
# 1. run the point generation script. See the comments in that file for instructions.
# 2. Run this code: awk -f example_integral.awk x.coords
BEGIN { M=1; B=0; AREA=0 }
function line( m,x,b){
        return m*x + b
}
{
        if ( NR == 1){
                prev = $0
        }
        else {
                delta = $1 - prev
                y = line(M,$1,B)
                AREA += delta * y
                prev = $1
        
        }
}
END { print "The computed area is", AREA }
