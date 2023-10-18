// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

//sum = 0
@sum
M=0

//if(R1 == 0) goto IFZERO
@R1
D=M
@IFZERO
D;JEQ

//Setup
@R0
D=M
@sum
M=D
@R1
M=M-1

//Loop
(LOOP)
// if(R1 == 0) goto STOP
@R1
D=M
@STOP
D;JEQ
// Decrement
@R1
M=M-1
@R0
D=M
@sum
M=M+D
@LOOP
0;JMP


(IFZERO)
@sum
M=0
@STOP
0;JMP



(STOP)
@sum
D=M
@R2
M=D
(END)
@END 
0;JMP