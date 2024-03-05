    @SCREEN
    D=A
    @addr
    M=D

    @20
    D=A
    @n
    M=D

    @0
    D=A
    @i
    M=D

(LOOP)
    @i
    D=M
    @n
    D=D-M
    @END
    D;JGT

    @addr
    A=M
    M=-1

    @i
    M=M+1
    @32
    D=A
    @addr
    M=D+M
    @LOOP
    0;JMP

(END)
    @END
    0;JMP
