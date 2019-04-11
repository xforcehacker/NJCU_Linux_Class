BEGIN {printf("%-10s %-10s %-10s %-10s %-10s\n", "INPUT", "BINARY", "DECIMAL", "HEX", "DESCRIPTION")};

{printf("%-10s %-10s %-10s %-10s The letter %s in ASCII encoding\n",$1, $2, $3, $4, $1)}
