//18COB323 Group 3

# ORG 1000H
	   MVI A,92	// Storing control word
	   OUT 73	// Placing value in control register port
	   IN 70	// Taking input from PORT A
	   MOV B,A	// Moving data of A to B
	   IN 71	// Taking input from PORT A
	   ORA B	// Performing OR operation
	   OUT 72	// Placing value in PORT C
	   HLT	// END
