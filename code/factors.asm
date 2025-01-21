INP
        SUB ONE
        BRZ STOP
        ADD ONE
        STA NUM
        STA N
LOOP    LDA NUM
        STA N
        BRA MODULO
UPDATE  LDA MOD
        BRZ PRINT
UPDII   LDA I
        ADD ONE
        STA I
        SUB NUM
        BRZ STOP
        BRA LOOP
MODULO  LDA I
        SUB N
        SUB ONE
        BRP EXIT
        LDA N
        SUB I
        STA N 
        BRA MODULO
EXIT    LDA N
        STA MOD
        BRA UPDATE
PRINT   LDA I
        OUT
        BRA UPDII
STOP    LDA I
        OUT
        HLT
MOD     DAT
NUM     DAT
N       DAT
I       DAT 1
ONE     DAT 1
