        INP
        STA A
        LDA TWO
        STA B
DIVIDE  LDA B
        SUB A
        SUB ONE
        BRP QOUT
        LDA A
        SUB B
        STA A 
        BRA DIVIDE
QOUT    LDA A 
        OUT
        HLT
A       DAT
B       DAT
ONE     DAT 1
ZERO    DAT 0
TWO     DAT 2
