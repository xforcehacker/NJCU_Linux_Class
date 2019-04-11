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
		y = curve( $1 )
		AREA += delta * y
		prev = $1
	}
}
END { print "The computed area, using the right endpoint rule, is:", AREA }
