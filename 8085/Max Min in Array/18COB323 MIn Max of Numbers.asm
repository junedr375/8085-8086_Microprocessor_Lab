// Md Juned Raza 18COB323
	   LXI H,2000H  //Loading first Pointer 
	   LDA 4000H    //Loading length drom 4000H
	   MOV C,A        //Moving A to C
	   MOV D,M        //Moving M to D
	   MOV E,D         //Moving D to E
	   INX H             //Incrementing H
	   DCR C             //Decrementing C

LOOP1:	   MOV A,M        //Moving M to A
	   CMP D            // Comapring A with content of D
	   JNC LOOP2    //if CY= 0 , A is not smaller
	   MOV D,A       //Moving A to D

LOOP2:	   CMP E           //Comapering A with E
	   JC LOOP3    //if Cy=1 A is not larger
	   MOV E,A      //Moving A to E

LOOP3:	   INX H          //Incrementing H
	   DCR C         //Decrementing C
	   JNZ LOOP1  //Go to Loop1
	   LXI H, 5500H   //Loading Address to Store MIN Max
	   MOV M,D        //Stroring Min at 5500H
	   INX H            //Incrementing H
	   MOV M,E       //Storing Max at 5501
	   HLT              //Stop

# ORG 2000H
# DB 01H,05H,13H,24H,55H,64H,71H,78H,85H,88H

# ORG 4000H
# DB 0AH
