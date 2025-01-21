INP 
        STA N
        STA B
INPUT   INP
        ADD TOTAL
        STA TOTAL
        LDA N
        SUB ONE
        STA N
        BRZ AVERAGE
        BRA INPUT
AVERAGE LDA TOTAL
        STA A 
DIVIDE  LDA B
        SUB A
        SUB ONE
        BRP QOUT
        LDA A
        SUB B
        STA A
        LDA QUOTIENT
        ADD ONE
        STA QUOTIENT
        BRA DIVIDE
QOUT    LDA QUOTIENT
        OUT
        HLT
A       DAT
B       DAT
QUOTIENT DAT
ONE     DAT 1
ZERO    DAT 0
REMAINDER DAT
N       DAT
TOTAL   DAT
