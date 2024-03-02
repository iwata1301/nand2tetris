// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

//Multiplication 5*6
        @5
        D=A
        @i
        M=D
        @6
        D=A
        @j
        M=D
        @0
        D=A
        @mul
        M=D
    (LOOP)
        @j
        M=M-1
        D=M
        @END
        D;JLT
        @i
        D=M
        @mul
        M=D+M
        @LOOP
        0;JMP
    (END)
        @END
        0;JMP