           INP 
        STA A
REVERSE LDA A
        BRZ DISP
        BRA MODULO
REVCONT LDA REVNUM
        ADD MOD
        STA REVNUM
        BRA REVERSE
MODULO  LDA TEN
        SUB A
        SUB ONE
        BRP MOUT
        LDA A
        SUB TEN
        STA A
        LDA QUOTIENT
        ADD ONE
        STA QUOTIENT
        BRA MODULO
MOUT    LDA A
        STA MOD
        LDA QUOTIENT
        STA A
        LDA ZERO
        STA QUOTIENT
        LDA REVNUM
        STA I
        LDA ZERO
        STA REVNUM
        BRA MULTIPLY
MULTIPLY LDA I
        BRZ REVCONT
        LDA REVNUM
        ADD TEN
        STA REVNUM 
        LDA I
        SUB ONE
        STA I
        BRA MULTIPLY
DISP    LDA REVNUM
        OUT
        HLT
QUOTIENT DAT
ZERO    DAT 0
TEN     DAT 10
MOD     DAT
A       DAT
REVNUM  DAT 0
ONE     DAT 1
I       DAT
