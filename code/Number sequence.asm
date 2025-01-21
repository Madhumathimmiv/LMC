//initial, final and step value is given
INP
        STA INITIAL
        INP 
        STA FINAL
        INP 
        STA STEP
		LDA INITIAL
		OUT
LOOP    LDA INITIAL
        ADD STEP 
        STA INITIAL
		LDA INITIAL
        SUB FINAL
        BRZ STOP1	
		BRP STOP
		LDA INITIAL
		OUT    
        BRA LOOP
STOP1	LDA INITIAL
		OUT
		HLT
STOP    HLT
INITIAL DAT
FINAL   DAT
STEP    DAT
