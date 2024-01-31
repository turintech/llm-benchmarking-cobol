       IDENTIFICATION DIVISION.
       PROGRAM-ID.    MAX-ARRAY.
      *
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ArraySize PIC 9(2) VALUE 5.
       01  NumArray.
       05  NumElement PIC 9(4) OCCURS 5 TIMES.
       01  MaxValue PIC 9(4) VALUE 0.
       01  I PIC 9(2).
      *
       PROCEDURE DIVISION.
       PERFORM InitializeArray.
       PERFORM VARYING I FROM 1 BY 1 UNTIL I > ArraySize
           IF NumElement(I) > MaxValue THEN
               MOVE NumElement(I) TO MaxValue
           END-IF
       END-PERFORM
       DISPLAY "The maximum value is: " MaxValue.
      *
       STOP RUN.

       InitializeArray.
           MOVE 100 TO NumElement(1)
           MOVE 200 TO NumElement(2)
           MOVE 300 TO NumElement(3)
           MOVE 400 TO NumElement(4)
           MOVE 500 TO NumElement(5)
           EXIT.

       END PROGRAM MAX-ARRAY.
