      PROGRAM IOTEST
C CONVERT NUMERIC TO STRING
      INTEGER N
      CHARACTER*20 MYSTR
      CHARACTER*20 FRMT

      
      N = 25
      WRITE(MYSTR, '(I4)') N
      PRINT *, 'N=', N
      PRINT *, 'MYSTR=', '---', MYSTR, '---'

      N1 = 55
      N2 = 66
      WRITE(MYSTR, 100) N1, N2
100   FORMAT(2I4)      
      PRINT *, 'N1=', N1, 'N2=', N2
      PRINT *, 'MYSTR=', '---', MYSTR, '---'

      FRMT = '(I4,'','',I4)'
C      FRMT = "(I4,',',I4)"
      WRITE(MYSTR, FRMT) N1, N2
      PRINT *, 'N1=', N1, 'N2=', N2
      PRINT *, 'MYSTR=', '---', MYSTR, '---'

C CONVERT STRING CONTAINING NUMERIC TO A NUMERIC VALUE
      N3 = 999
      MYSTR = '55'
      READ(MYSTR, '(I4)') N3
      PRINT *, 'MYSTR ---', MYSTR, '---'
      PRINT *, 'N3 ---', N3, '---'

      MYSTR = '3.1415926'
      READ(MYSTR, '(F11.7)') R
      PRINT *, 'MYSTR ---', MYSTR, '---'
      PRINT *, 'R ---', R, '---'
      PRINT 200, R
      PRINT 200, MYSTR
200   FORMAT('FORMATTED ', F11.7)      
      PRINT *, 'REAL OF MYSTR ---', REAL(R), '---'


      END PROGRAM