//Multiplication
    @ans
    M=0
    @mul
    M=1

(LOOP)
    @R1
    D=M
    @mul
    D=D-M
    @END
    D;JLT

    @mul
    D=M
    @R1
    D=D&M
    @ISONE
    D;JGT
    @NOTONE
    0;JMP
    (ISONE)
    @R0
    D=M
    @ans
    M=D+M
    (NOTONE)
    @R0
    D=M
    M=D+M
    @mul
    D=M
    M=D+M
    
    @LOOP
    0;JMP
(END)
    @ans
    D=M
    @R2
    M=D

