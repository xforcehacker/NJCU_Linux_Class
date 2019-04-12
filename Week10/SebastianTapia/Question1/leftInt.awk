#Ran the example one you gave us in the github, worked good
BEGIN { AREA = 0 }
function curve( x )
{
        return ( x*x*x ) + ( 2.6 * x ) - 11.7
}
{
        if ( NR == 1 ){
                prev = $0
        }
        else{
                delta = $1 - prev
                y = curve( $1 - delta )
                AREA += delta * y
                prev = $1
        }
}
END { print "The computed area on the left endpoint rule is:", AREA }
