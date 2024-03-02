// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.

//Addition 300 + 200
	@300
	D=A
	@200
	D=D+A
	@i
	M=D
(END)
	@END
	0;JMP
