      PROGRAM EVNODD
      INTEGER N
      LOGICAL ISEVEN
      PRINT *, "ENTER AN INTEGER:"
      READ *, N
      
      IF (ISEVEN(N)) THEN
        PRINT *, N, " IS EVEN"
      ELSE
        PRINT *, N, " IS ODD"
      ENDIF
      END PROGRAM

      LOGICAL FUNCTION ISEVEN(NUM)
      INTEGER NUM
      IF (MOD(NUM, 2) .EQ. 0) THEN
        ISEVEN = .TRUE.
      ELSE
        ISEVEN = .FALSE.
      ENDIF
      END