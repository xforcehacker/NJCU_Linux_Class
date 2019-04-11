BEGIN { printf("\n%-6s %-10s %-8s %-6s %-10s\n", "INPUT", "BINARY", "DECIMAL", "HEX", "DESCRIPTION") };
{ printf("%-6s %-10s %-8d %-6x The letter %s in ASCII encoding\n",$1, $3, $2, $2, $1) }
END { print("\n----------------------------------The ASCII Table---------------------------------\n") }
