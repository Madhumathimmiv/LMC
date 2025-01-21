//GCD of two numbers(Constraints: Input range 1 to 999)

INP 
        STA A
        STA NUMA
        INP
        STA B
        STA NUMB
        SUB A
        BRZ EQUAL
        BRP BGREAT
        LDA B
        STA RESULT
        BRA LOOP
BGREAT  LDA A
        STA RESULT
LOOP    LDA ONE
        SUB RESULT
        BRZ DISP
        BRA AMODULUS
LCONT   LDA NUMA
        ADD NUMB
        BRZ DISP
        LDA RESULT
        SUB ONE
        BRZ DISP
        STA RESULT
        BRA LOOP
AMODULUS LDA RESULT
        SUB NUMA
        SUB ONE
        BRP BMODULUS
        LDA NUMA
        SUB RESULT
        STA NUMA
        BRA AMODULUS
BMODULUS LDA RESULT
        SUB NUMB
        SUB ONE
        BRP LCONT
        LDA NUMB
        SUB RESULT 
        STA NUMB
        BRA BMODULUS
EQUAL   LDA A
        OUT
        HLT
DISP    LDA RESULT
        OUT
        HLT
A       DAT
B       DAT
NUMA    DAT
NUMB    DAT
RESULT  DAT
ZERO    DAT 0
ONE     DAT 1
