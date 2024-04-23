      PROGRAM DOLOOP
      DO 100 I = 1, 5
        PRINT *, I
100   CONTINUE       

      PRINT *, "------------"
      DO 200 I = 10, 20, 3
        PRINT *, I
200   CONTINUE

      PRINT *, "-------------"
      DO 300 I = 100, 90, -1
        PRINT *, I
300   CONTINUE   

      PRINT *, "ENTER 5 INTEGERS"
      READ *, N1, N2, N3, N4, N5
      PRINT *, "MINIMUM VALUE: ", MIN(N1, N2, N3, N4, N5)
      PRINT *, "MAXIMUM VALUE: ", MAX(N1, N2, N3, N4, N5)

      PRINT *, "ENTER AN INTEGER FOR COMPUTED GOTO"
      READ *, N

      GOTO (11, 22, 33, 44) N

11    PRINT *, "FIRST GOTO AT LABEL 11"
      GOTO 999

22    PRINT *, "SECOND GOTO AT LABEL 22"
      GOTO 999

33    PRINT *, "THIRD GOTO AT LABEL 33"
      GOTO 999

44    PRINT *, "FOURTH GOTO AT LABEL 44"
      GOTO 999

999   CONTINUE

      END PROGRAM