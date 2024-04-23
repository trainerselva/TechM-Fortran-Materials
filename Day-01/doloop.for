      PROGRAM DOLOOP
      LOGICAL PFLAG

      DO 100 I = 1, 5
        PRINT *, I
100   CONTINUE

      PRINT *, "AFTER LOOP I = ", I

      PRINT *, "ENTER AN INTEGER: "
      READ *, N

      PFLAG = .TRUE.
      DO 200 J = 2, N-1
        IF (MOD(N, J) .EQ. 0) THEN
            PFLAG = .FALSE.
        ENDIF
200   CONTINUE

      IF (PFLAG) THEN
        PRINT *, "THE NUMBER IS PRIME"
      ELSE
        PRINT *, "THE NUMBER IS NOT PRIME"
      ENDIF

      DO 300 K = 2, N-1
        IF (MOD(N, K) .EQ. 0) THEN
            GOTO 400
        ENDIF
300   CONTINUE
400   IF (K .EQ. N) THEN
        PRINT *, "====> THE NUMBER IS PRIME"
      ELSE
        PRINT *, "====> THE NUMBER IS NOT PRIME"
      ENDIF

      END PROGRAM