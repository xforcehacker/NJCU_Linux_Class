BEGIN { AREA = 0 }
function line( x ){
	return y = x*x*x +2.6*x-11.7
} 
{
	if ( NR == 1 ){
		prev = $0
	}

	else {
		delta = $1 - prev
		y = line( $1-delta)
		AREA += delta * y
		prev = $1
	}
}
END { print "The computed area, using the left endpoint rule, is:", AREA }

