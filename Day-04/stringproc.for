      PROGRAM STRPRC
      INTEGER STRBEG, STREND
      CHARACTER(15) MYSTR

      
      MYSTR = '  HELLO  '
      PRINT *, 'ORIGINAL STRING - ', MYSTR
      PRINT *, 'LENGTH OF MYSTR - ', LEN(MYSTR)
      PRINT *, 'STRING BEGINS AT - ', STRBEG(MYSTR)
      PRINT *, 'STRING ENDS AT - ', STREND(MYSTR)

      CALL TRMSTR(MYSTR)
      PRINT *, 'TRIMMED STRING - ', '---', MYSTR, '---'
      END PROGRAM

      INTEGER FUNCTION STRBEG(STRNG)
      CHARACTER*(*) STRNG

      DO I = 1, LEN(STRNG)
        IF (STRNG(I:I) .NE. ' ') THEN
          GOTO 100
        ENDIF
      END DO

100   STRBEG = I
      RETURN
      END FUNCTION


      INTEGER FUNCTION STREND(STRNG)
      CHARACTER*(*) STRNG

      DO I = LEN(STRNG), 1, -1
        IF (STRNG(I:I) .NE. ' ') THEN
          GOTO 100
        ENDIF
      END DO

100   STREND = I
      RETURN
      END FUNCTION

      SUBROUTINE TRMSTR(MYSTR)
      INTEGER STRBEG, STREND
      CHARACTER*(*) MYSTR
      MYSTR = MYSTR(STRBEG(MYSTR):STREND(MYSTR))
      END SUBROUTINE

