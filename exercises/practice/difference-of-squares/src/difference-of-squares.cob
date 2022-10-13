      ******************************************************************
      * Author:NIKOS
      * Date:
      * Purpose:
      * Tectonics: cobc.exe -x -o bin\DIFFERENCE-OF-SQUARES.exe -std=default -Wall -debug DIFFERENCE-OF-SQUARES.COB
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIFFERENCE-OF-SQUARES.
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SOURCE-COMPUTER.  GNUCOBOL312.
       OBJECT-COMPUTER.  GNUCOBOL312.
       SPECIAL-NAMES.
            DECIMAL-POINT IS COMMA.
       REPOSITORY.
           FUNCTION ALL INTRINSIC.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 WS-DIFFERENCE-OF-SQUARES PIC 9(8).
       01 WS-SUM-OF-SQUARES PIC 9(8).
       01 WS-SQUARE-OF-SUM PIC 9(8).
       01 WS-NUMBER PIC 9(8).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
       SQUARE-OF-SUM.
           MOVE ZERO TO WS-NUMBER
           PERFORM 10 TIMES
             ADD 1 TO WS-NUMBER
             COMPUTE WS-SQUARE-OF-SUM = WS-NUMBER + WS-SQUARE-OF-SUM
             
           END-PERFORM
           COMPUTE WS-SQUARE-OF-SUM = WS-SQUARE-OF-SUM**2
           
           DISPLAY "WS-SQUARE-OF-SUM :" WS-SQUARE-OF-SUM.    
      
       SUM-OF-SQUARES.
           MOVE ZERO TO WS-NUMBER
           PERFORM 10 TIMES
           ADD 1 TO WS-NUMBER
           COMPUTE WS-SUM-OF-SQUARES = WS-NUMBER**2 + WS-SUM-OF-SQUARES
           END-PERFORM
           DISPLAY "WS-SUM-OF-SQUARES :" WS-SUM-OF-SQUARES. 
       
       DIFFERENCE-OF-SQUARES.
           COMPUTE WS-DIFFERENCE-OF-SQUARES = 
           WS-SQUARE-OF-SUM - WS-SUM-OF-SQUARES
           DISPLAY "WS-DIFFERENCE-OF-SQUARES :" WS-DIFFERENCE-OF-SQUARES
           .

       END PROGRAM DIFFERENCE-OF-SQUARES.
 
