BEGIN {AREA = 0}
function height ( x )
{
	#y = x^3 + 2.6*x - 11.7
	return (x*x*x) + (2.6 * x) - 11.7
}
{
	if (NR == 1){
		prev = $0
	}
	else{
		delta = $1 - prev
	y = height($1 - delta)
	AREA += delta * y 
	     prev = $1
     }
}
END {print "The area using the LEFT method is:", AREA}
