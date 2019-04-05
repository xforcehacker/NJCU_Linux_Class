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
