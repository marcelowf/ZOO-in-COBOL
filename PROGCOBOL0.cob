       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROGCOBOL0.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       INPUT-OUTPUT SECTION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       77 WS-SHOW PIC X(11) VALUE SPACES.
       
       LINKAGE SECTION.
       SCREEN SECTION.
       
       PROCEDURE DIVISION.
           DISPLAY "BEM VINDO AO ZOO".
           PERFORM FIR-PROC.
       FIR-PROC SECTION.
           PERFORM AVIARIO
           PERFORM AQUARIO
           PERFORM INSETARIO.
       SEC-PROC SECTION.
           PERFORM HERPETARIO
           PERFORM MAMIFERARIO
           PERFORM CRIADOURO.
       AVIARIO.
           MOVE 'AVIARIO' TO WS-SHOW
           DISPLAY WS-SHOW
           PERFORM SEC-PROC.
       AQUARIO.
           MOVE 'AQUARIO' TO WS-SHOW
           DISPLAY WS-SHOW
           PERFORM SEC-PROC.
       INSETARIO.
           MOVE 'INSETARIO' TO WS-SHOW
           DISPLAY WS-SHOW
           PERFORM SEC-PROC.
       HERPETARIO.
           IF WS-SHOW EQUAL "AVIARIO" THEN
               MOVE 'HERPETARIO' TO WS-SHOW
               DISPLAY WS-SHOW
               PERFORM AQUARIO
           END-IF.
       MAMIFERARIO.
           IF WS-SHOW EQUAL "AQUARIO" THEN
               MOVE 'MAMIFERARIO' TO WS-SHOW
               DISPLAY WS-SHOW
               PERFORM INSETARIO
           END-IF.
       CRIADOURO.
           IF WS-SHOW EQUAL "INSETARIO" THEN
               MOVE 'CRIADOURO' TO WS-SHOW
               DISPLAY WS-SHOW
               PERFORM END-PROC
           END-IF.
       END-PROC SECTION.
           DISPLAY "FIM DO PASSEIO"
           STOP RUN.

       END PROGRAM PROGCOBOL0.
