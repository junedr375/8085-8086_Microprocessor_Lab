//18COB323

LXI H, 2050H	// H <- 20, L <- 50
MOV C,M	// C <- M
LDA 3050H	// A <- M[3050]
MOV B,A	// B <- A
INX H	// HL <- HL + 0001
MOV A,M	// A <- M
CMP B	// A – B
JNZ 2014	// Jump if ZF = 0
MVI A,F0H	// A <- F0
STA 3051H	// M[3051] <- A
HLT	// END
MVI A,0FH	// A <- 0F
STA 3051H	// M[3051] <- A
DCR C	// C <- C – 01
JNZ 2008	// Jump if ZF = 0
HLT


#ORG 2050H
#DB 04,49H,F2H,14H,39H

#ORG 3050
#DB 14H