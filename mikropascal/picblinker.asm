
_main:

;picblinker.mpas,5 :: 		begin
;picblinker.mpas,7 :: 		TRISA := 0;  // TRISA register (data direction)  0 = OUTPUT
	CLRF       TRISA+0
;picblinker.mpas,8 :: 		PORTA := 0;  // PORTA register (reads the levels on the pins oft he device)
	CLRF       PORTA+0
;picblinker.mpas,9 :: 		LATA  := 0;  // LATA register (output latch) all OUTPUTS to 0
	CLRF       LATA+0
;picblinker.mpas,11 :: 		while true do
L__main2:
;picblinker.mpas,13 :: 		LATA.0 := 1;
	BSF        LATA+0, 0
;picblinker.mpas,14 :: 		LATA.1 := 1;
	BSF        LATA+0, 1
;picblinker.mpas,15 :: 		LATA.2 := 1;
	BSF        LATA+0, 2
;picblinker.mpas,16 :: 		LATA.0 := 0;
	BCF        LATA+0, 0
;picblinker.mpas,17 :: 		LATA.1 := 0;
	BCF        LATA+0, 1
;picblinker.mpas,18 :: 		LATA.2 := 0;
	BCF        LATA+0, 2
;picblinker.mpas,19 :: 		end;
	GOTO       L__main2
;picblinker.mpas,23 :: 		end.
L_end_main:
	GOTO       $+0
; end of _main
