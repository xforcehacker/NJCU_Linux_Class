BEGIN {printf("%-9s %-9s %-9s %-9s\n", "INPUT", "DECIMAL", "BINARY", "HEX")}
{printf("%-9s %-9s %-9s %-9s\n", $1, $2, $3, $4)}
