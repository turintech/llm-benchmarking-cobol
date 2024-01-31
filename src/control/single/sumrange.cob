       IDENTIFICATION DIVISION.
       PROGRAM-ID.    SUM-OF-INTEGERS.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N PIC 9(4) VALUE 100.
       01  I PIC 9(4) VALUE 0.
       01  S PIC 9(4) VALUE 0.
      *
       PROCEDURE DIVISION.
       PERFORM VARYING I FROM 0 BY 1 UNTIL I > N
           COMPUTE S = S + I
       END-PERFORM
       DISPLAY "The sum of integers from 0 to " N " is " S.
      *
       STOP RUN.
