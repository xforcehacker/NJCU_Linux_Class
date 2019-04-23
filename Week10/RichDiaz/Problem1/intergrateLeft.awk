BEGIN {A = 0}
function height ( x )
{      #y = x^3 + mx - b
	#y = (x*x*x) + (2.6 * x) - 11.7
	return (x*x*x) + (2.6 * x) - 11.7
}
{
	if (NR == 1) {
		prev + $0
	}
	else{
		delta = $1 - prev
	y = height($1 - delta)
	A += delta * y
	prev + $1
}
}
END { print "Computed area using LEFT method is:", A}
