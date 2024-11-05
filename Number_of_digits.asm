//Count digits of a number(max input 999)
INP 
        BRZ ZOUT
        STA NUM
        STA QUOTIENT
        LDA HUNDRED
        SUB NUM
        BRZ HOUT
        LDA TEN
        SUB NUM
        BRZ TOUT
LOOP    LDA NUM
        BRZ EXIT
        LDA QUOTIENT
        STA NUM
        LDA ZERO
        STA QUOTIENT
        BRA DIVIDE
DIVIDE  LDA TEN
        SUB NUM
        BRP QOUT
        LDA NUM
        SUB TEN
        STA NUM
        LDA QUOTIENT
        ADD ONE
        STA QUOTIENT
        BRA DIVIDE
QOUT    LDA COUNT
        ADD ONE
        STA COUNT
        BRA LOOP 
ZOUT    LDA ONE
        OUT
        HLT
HOUT    LDA THREE
        OUT
        HLT
TOUT    LDA TWO
        OUT
        HLT
EXIT    LDA COUNT
        SUB ONE
        OUT
        HLT
NUM     DAT
QUOTIENT DAT
ZERO    DAT 0
TEN     DAT 10
ONE     DAT 1
COUNT   DAT 0
HUNDRED DAT 100
TWO     DAT 2
THREE   DAT 3
