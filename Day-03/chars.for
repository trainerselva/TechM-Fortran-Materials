      PROGRAM CHARS
C      IMPLICIT NONE
      CHARACTER*10 FN, LN
      CHARACTER*20 FULNAM
      CHARACTER*20 STR1
      CHARACTER(*) RTRIM


      FN = 'FIRST'
      LN = 'LAST'
      FULNAM = FN // LN
      PRINT *, FULNAM

      STR1 = 'HELLO WORLD'
      PRINT *, STR1, LEN(STR1)
      
C      PRINT *, 'AFTER RTRIM STR1 = ',RTRIM(STR1),' LENGTH ',LEN(STR1)
      
      
      CALL GETLEN(STR1)
      PRINT *, STR1(2:5)

      PRINT *, INDEX(STR1, 'LO')
      PRINT *, STR1(1:INDEX(STR1, ' ')-1),'----'
      PRINT *, TRIM(STR1),'----'
      PRINT *, RTRIM(STR1),'======='
      END PROGRAM

      SUBROUTINE GETLEN(STRING)
      CHARACTER*(*) STRING
      PRINT *, 'LENGTH OF STRING IS = ', LEN(STRING)
      END

      CHARACTER*(*) FUNCTION RTRIM(STRING)
      CHARACTER*(*) STRING
      L = LEN(STRING)
      DO 10 I = L, 1, -1
        IF (STRING(I:I) .NE. ' ') THEN
            GOTO 55
        ENDIF
10    CONTINUE
55    RTRIM = STRING(1:I)
      END        