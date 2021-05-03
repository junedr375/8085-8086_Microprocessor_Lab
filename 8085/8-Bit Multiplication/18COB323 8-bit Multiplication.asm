//MD JUNED RAZA
//18COB323
	   LXI SP,2000    //Initilize SP
	   LHLD 3000      //Loading First 16 bit Number
	   XCHG                //Exchanging HL and DE
	   LHLD 3002       //Loading First 16 bit Number
	   CALL SSRT      //Calling Subroutine
	   HLT                  

SSRT:	   PUSH H           //Push HL pair into stack
	   POP B              //Loading HL val to BC
	   LXI H,0000     //Loading 0000
	   SHLD 8052      // Storing LS 2-Byte

LOOP1:	   DAD D                //Add First Number to HL Pair
	   JNC LOOP2       //Jump to SKIP if CY = 0
	   PUSH H            //PUSH HL INTO STACK
	   LHLD 8052       //Load HL pair from LS 2-bytes of the result 
	   INX H               //Increasing HLpair
	   SHLD 8052     //Storing HL pair as LS 2-bytes of the result  
	   POP H             //Pop stack content to HL pair

LOOP2:	   DCX B             //Decreasing BCregister pair
	   MOV A,B         //Loading B to A
	   ORA C             //OR C with A
	   JNZ LOOP1    //When Z = 0,jump to LOOP1
	   SHLD 8050    //Storing HL pair to 8050H
	   RET                 //Return
# ORG 3000H
# DB 12H,03H
# ORG 3002H
# DB 32H,02H
