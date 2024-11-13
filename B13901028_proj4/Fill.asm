//Fill

//Infinite loop
(WHILE)
    @KBD
    D=M
    @Whiten
    D;JEQ

    @KBD
    D=M
    @Blacken
    D;JNE


//Blacken the SCREEN
(Blacken)
    //addr = SCREEN
    @SCREEN
    D=A
    @addr
    M=D

    //N = 8192
    @8192
    D=A
    @N
    M=D
    
    //for i in range(N)
    @i
    M=0
(BLOOP)
    @i
    D=M
    @N
    D=D-M
    @BEND
    D;JGE

    @addr
    A=M
    M=-1

    @addr
    M=M+1
    @i
    M=M+1

    @BLOOP
    0;JMP
(BEND)
    @WHILE
    0;JMP

//Whiten the SCREEN
(Whiten)
    //addr = SCREEN
    @SCREEN
    D=A
    @addr
    M=D

    //N = 8192
    @8192
    D=A
    @N
    M=D
    
    //for i in range(N)
    @i
    M=0
(WLOOP)
    @i
    D=M
    @N
    D=D-M
    @WEND
    D;JGE

    @addr
    A=M
    M=0

    @addr
    M=M+1
    @i
    M=M+1

    @WLOOP
    0;JMP
(WEND)
    @WHILE
    0;JMP

