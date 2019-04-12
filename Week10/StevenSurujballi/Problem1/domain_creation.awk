BEGIN {
	NUM_X = 10000
	START_X = 0
	END_X = 10
	DELTA = ( END_X - START_X ) / NUM_X
	for ( i = START ; i <= NUM_X; ++i )
		print i * DELTA
}
