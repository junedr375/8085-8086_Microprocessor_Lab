//18COB323 Md Juned Raza
	   LXI H,8000H    // Load address of counter
	   MOV C,M          // Moving to C
	   LXI D,8001H   // Loading first address of 2byte no to DE
	   LXI H,8004H  // loading first byte of second no in HL
	   STC                  // Set carry flag = 1

LOOP:	   MVI A,99H        //Loading 99 to Accumulator
	   ACI 00H            //Adding 00 + A + carry
	   SUB M                // Subtracting M from A
	   XCHG	      //Exchanging HL with DE
	   ADD M	     // Adding A and M
	   DAA                 // Converting to BCD
	   MOV M,A         //Loading M to A
	   XCHG             //Exchanging HL with DE
	   INX H             //Incrementing HL
	   INX D             //increamenting DE
	   DCR C             // Decrementing C
	   JNZ LOOP       
	   HLT                  //Stop

# ORG 8000H     //address of counter
# DB 02H
# ORG 8001H   //adreess of first number
# DB 04H,05H
# ORG 8004H   //adress of second number
# DB 03H,02H

// Subtracted value saving at 8001 and 8002


