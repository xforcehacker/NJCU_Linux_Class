BEGIN {
num_x = 10000
start_x = 0
end_x = 10
delta = ( end_x - start_x ) / num_x
for ( i = start; i <= num_x; ++i )
        print i * delta
}
