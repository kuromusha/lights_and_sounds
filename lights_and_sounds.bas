0 REM
0 REM        LIGHTS & SOUNDS        
0 REMDec.17,1990  No.18  K.Kuromusha
0 REM
10 DIM A$(2),B$(42),C$(2),D(29):FOR I=0 TO 9:READ B$(I):NEXT
20 FOR I=17 TO 42:READ B$(I):NEXT:FOR I=0 TO 2:READ A,C$(I):A$(I)=CHR$(A):NEXT
30 TEMPO 7:X=0:T$="LIGHTS AND SOUNDS":GOTO 270
40 REM **** SELECT ****
50 GET G$:ON (ASC(G$+" ")-8) GOTO 80,140:IF G$=A$(0) THEN END
60 R=RND(1):X=-(X+.03)*(X<2.95):PRINT CHR$(14);A$(X);:GOTO 50
70 REM **** GAME 1 ****
80 S=0:T=100:PRINT CHR$(14);G$;:MUSIC"C5EG+CR"
90 I=T:R=INT(RND(1)*3):PRINT CHR$(14);A$(R);:MUSIC"+C0"
100 GET K$:IF K$=A$(R) THEN MUSIC C$(R)+"2":S=S+1:T=T-1:GOTO 90
110 I=I-1:IF I>0 THEN 100
120 MUSIC"-C9R2":PRINT CHR$(14);:T$="SCORE  "+STR$(S):GOTO 270
130 REM **** GAME 2 ****
140 S=0:T=5:U=5:PRINT CHR$(14);G$;:MUSIC"G5EG+CR"
150 D(S)=INT(RND(1)*3):FOR I=0 TO S:PRINT CHR$(14);A$(D(I));
160 MUSIC C$(D(I))+STR$(U):NEXT:W=0
170 V=100:PRINT CHR$(14);
180 GET K$:ON -(K$=A$(D(W))) GOTO 220:J=0:FOR I=0 TO 2:J=J+(K$=A$(I)):NEXT
190 IF J=0 THEN V=V-1:IF V<>0 THEN 180
200 MUSIC"-C9R2":FOR I=0 TO S:PRINT CHR$(14);A$(D(I));:MUSIC C$(D(I))+"5"
210 NEXT:MUSIC"R":PRINT CHR$(14);:T$="SCORE  "+STR$(S):GOTO 270
220 PRINT K$;:FOR I=0 TO 1:MUSIC C$(D(W))+"0":POKE 4595,0:GET K$
230 I=-(K$<>A$(D(W))):NEXT:W=W+1:ON -(W=<S) GOTO 170:PRINT CHR$(14);
240 MUSIC"+E5+CR":T=T-1-5*(T=1):U=(1-U+(U=0))*(T=5)-U*(T<>5)
250 S=S+1:ON -(S<>30) GOTO 150:MUSIC"+C4+C+C+CR":T$="PERFECT   SCORE  30"
260 REM **** MESSAGE ****
270 FOR I=1 TO LEN(T$):TT$=MID$(T$,I,1):IF TT$=" " THEN MUSIC"R3":GOTO 300
280 TE$=B$(ASC(TT$)-48):FOR J=1 TO LEN(TE$)
290 MUSIC"A"+STR$(1-4*(MID$(TE$,J,1)="-")):MUSIC"R1":NEXT
300 MUSIC"R3":NEXT:MUSIC"+C9":GOTO 50
310 REM **** DATA ****
320 DATA -----,.----,..---,...--,....-,.....,-....,--...,---..,----.
330 DATA .-,-...,-.-.,-..,.,..-.,--.,....,..,.---,-.-,.-..,--,-.,---,.--.
340 DATA --.-,.-.,...,-,..-,...-,.--,-..-,-.--,--..,12,C,9,E,10,G
