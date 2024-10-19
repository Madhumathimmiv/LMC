INP 
        STA N
INPUT   INP
        ADD TOTAL
        STA TOTAL
        LDA N
        SUB ONE
        STA N
        BRZ DISP
        BRA INPUT
DISP    LDA TOTAL
        OUT
N       DAT
ONE     DAT 1
