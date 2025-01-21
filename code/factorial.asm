INP
        STA A
        STA B
        STA TOTAL
		LDA A 
		BRZ OUTPUT
DEC     LDA TOTAL
		STA A
		LDA B
        SUB ONE 
        STA B
        STA COUNT
        BRZ DISP
MULTIPLY LDA COUNT
        SUB ONE
        STA COUNT
        BRZ DEC
        LDA TOTAL
        ADD A
        STA TOTAL
        BRA MULTIPLY
OUTPUT  LDA ONE
		OUT
		HLT
DISP    LDA TOTAL
        OUT
        HLT
A       DAT
B       DAT
TOTAL   DAT
ONE     DAT 1
COUNT   DAT
