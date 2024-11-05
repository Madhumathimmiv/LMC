//Checking prime number,if prime number, output 1 else 0(Constraints: Input range 2 to 999, since 1 is neither prime nor composite)
   INP 
        STA NUM
        STA A
        SUB TWO
        BRZ PRIME
LOOP    LDA I
        SUB NUM
        BRZ PRIME
        BRA MODULUS
LCONT   LDA A
        BRZ NOTPRIME
        LDA I
        ADD ONE
        STA I
        LDA NUM
        STA A
        BRA LOOP
MODULUS LDA I
        SUB A
        SUB ONE
        BRP LCONT
        LDA A
        SUB I
        STA A
        BRA MODULUS 
NOTPRIME LDA ZERO
        OUT
        HLT
PRIME   LDA ONE 
        OUT
        HLT
NUM     DAT
TWO     DAT 2
FLAG    DAT 1
I       DAT 2
A       DAT
ONE     DAT 1
ZERO    DAT 0
