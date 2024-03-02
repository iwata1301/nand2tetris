// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

// division 10/3
        @10
        D=A
        @i
        M=D

        @3
        D=A
        @j
        M=D

        @i
        D=M
        @div
        M=D

        @0
        D=A
        @l
        M=D

    (LOOP)
        @j
        D=M
        @div
        M=M-D
        @div
        D=M
        @END
        D;JLT
        @l
        M=M+1
        @LOOP
        0;JMP
    (END)
        @END
        0;JMP