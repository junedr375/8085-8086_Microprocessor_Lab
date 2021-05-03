//Md Juned Raza 18COB323
# ORG 2400H
# BEGIN 2400H
	   LDA COUNTER //Loading Counter value to Accumulator
	   MOV B,A            //Loading A to B
	   LXI D,2601       //Loading to DE Pair

LOOP:	   LXI H,SIZE       //Loading Size to HL pair
	   MOV C,M           //Moving content of M to C
	   LXI H,SUM        //Load content of Sum to HL Pairt
	   
BACK:	   LDAX D            //Loading DE with content of operand
	   ADC M              // Adding content of M with Carry and Accumulator
	   MOV M,A          // Loading content of A to M
	   INX D               // Inrementing DE pair
	   INX H               //Incrementing HL pair
	   DCR C               //Decrementing C
	   JNZ BACK        //Looping to load all bytes
	   LXI D,2606      //Loading into DE pair
	   DCR B               //Decrementing B
	   JNZ LOOP        //Looping to load both operand
                          //Storing Carry last bit if generted 	
	   MVI A,00           //Initializing with 00
	   MOV B,A            //Copying A to B
                      	   MVI A,00         
	   ADC B 	       //Adding with carry 
	   STA 2900         //Storing the carry bit  at 2900
	   HLT                   //Stop
# ORG 2500H
# COUNTER:  DB 02H
# ORG 2501H
# SIZE: DB 05H
#ORG 2601H
# DB FFH,54H,12H,32H,FFH
#ORG 2606H
# DB 01H,25H,16H,04H,01H
//Stroring Answer
#ORG 2800
# SUM: DB 00H,00H,00H,00H,00H


