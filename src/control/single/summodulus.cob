       IDENTIFICATION DIVISION.
       PROGRAM-ID.    SUM-OF-MODULUS-INTEGERS.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  N PIC 9(4) VALUE 100.
       01  M PIC 9(4) VALUE 4.
       01  I PIC 9(4) VALUE 0.
       01  S PIC 9(4) VALUE 0.
       01  R PIC 9(4) VALUE 0.
       01  Q PIC 9(4) VALUE 0.
      *
       PROCEDURE DIVISION.
       PERFORM VARYING I FROM 0 BY 1 UNTIL I > N
           DIVIDE I BY M GIVING Q REMAINDER R
           IF R = 0
               COMPUTE S = S + I
           END-IF
       END-PERFORM
       DISPLAY "The sum of integers from 0 to " N " modulus " M " is " S.
      *
       STOP RUN.

