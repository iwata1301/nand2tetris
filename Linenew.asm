// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

//This code is to draw lines.

    @SCREEN
    D=A
    @addr
    M=D

    @32
    D=A
    @adjc   //distance between two lines for horizontal direction
    M=D
    @1000
    D=A
    @adjr   //distance from base line
    M=D

    @2
    D=A
    @n      //length for verical line
    M=D

    @2
    D=A
    @m      //number of lines
    M=D

//Multiplication m*32
    @32
    D=A
    @k
    M=D
    @0
    D=A
    @mul
    M=D

(LOOPM)
    @k
    M=M-1
    D=M
    @LOOPML
    D;JLT
    @m
    D=M
    @mul
    M=D+M
    @LOOPM
    0;JMP

(LOOPML)
    @0
    D=A
    @i
    M=D
    @j
    M=D

(LOOPD)
    @j
    D=M
    @m
    D=D-M
    @END
    D;JGE
    @adjr
    D=M
    @addr
    M=D+M

(LOOPH)
    @i
    D=M
    @n
    D=D-M
    @LOOPG
    D;JGT

    @addr
    A=M
    M=-1
    @i
    M=M+1

    @adjc
    D=M
    @addr
    M=D+M

    @LOOPH
    0;JMP

(LOOPG)
    @0
    D=A
    @i
    M=D

    @mul
    D=M
    @adjr
    M=D+M

    @j
    M=M+1

    @SCREEN
    D=A
    @addr
    M=D

    @LOOPD
    0;JMP

(END)
    @END
    0;JMP
