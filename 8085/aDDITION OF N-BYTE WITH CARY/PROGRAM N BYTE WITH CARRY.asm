
//MD JUNED RAZA 18COB323


//Here I am adding number by spliting them into two parts so if carry generated by adding number of lower parts it will be added with addition of upper parts

LDA 2000  //Loading content of 2000 to accumulator 
MOV B,A    //storing value to B register
LDA 2002   //Loading value of 2002 at  A
ADD B        //Adding contents 
STA 3000  //Storing content of lower half at location 3000
LDA 2001  //loading first upper half content at 2001
MOV B,A    // loading value of A into B
LDA 2003  //loading value in A
ADC B        //Adding with carry (if generated in addition of lower half)
STA 3001  //Storing addition value at 3001
HLT            //Stop execution


#ORG 2000H
#DB FFH,10H
#ORG 2002H
#DB 11H,12H
