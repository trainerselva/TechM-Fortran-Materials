      PROGRAM COMPAR
      PRINT *, "ENTER 2 INTEGERS:"
      READ *, N1, N2
C      ISUM = N1 + N2
C      PRINT *, "SUM = ", ISUM

      IF (N1 .GT. N2) THEN 
        PRINT *, "MAX VALUE = ", N1
      ELSE
        PRINT *, "MAX VALUE = ", N2
      ENDIF

      END PROGRAM