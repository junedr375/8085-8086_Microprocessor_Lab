;Md Juned Raza
;18COB323

MOV SI, 0500H       ;seting value of SI to 0500H
MOV CL, [SI]        ;loading data from SI to CL
DEC CL              ;Decresing CL

L1: MOV SI,0500H    ;setting value of Si to 0500H
    MOV CH,[SI]     ;loading data from SI to CH
    DEC CH          ;Decrementing CH
    INC SI          ;Increamenting SI
    
L2: MOV AL, [SI]    ;loading value to AL From Si
    INC SI          ;Increamenting SI
    CMP AL,[SI]     ;Comparing AL with SI
    JC L3           ;Jump to L3 if carry genrated
    XCHG AL,[SI]    ;Excahnging the content of Al, SI
    DEC SI          ;Secrementing SI
    XCHG AL, [SI]   ;Exchanging value of Al, SI
    INC SI          ;Incrementing Si
    
L3: DEC CH          ;Decrementing Ch
    JNZ L2          ;jumping to l2 if zero flag reset
    DEC CL          ;Decrementing CL
    JNZ L1          ;Jumping to L1 if flag reset
                    ;END
HLT