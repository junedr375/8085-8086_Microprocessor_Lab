//18COB323 Md Juned Raza  
 
	   LXI H, 1210 //Loading data to HL pair
	   LXI D,2121  //Loading data to DE pair
	   MOV A,L	// loading lower least signfcnt bits
	   ADD E	// Adding two lower digit
	   DAA	// Adjust result to valid BCD
	   STA 2300	// Storing additio of LSB
	   MOV A,H	// Get most significant 2 digits of number
	   ADC D	// Add two most significant digits
	   DAA	// Adjust result to valid BCD
	   STA 2301	// Storing addition MSB with addion with carry
	   HLT	// Terminate program execution
