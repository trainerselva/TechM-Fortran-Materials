      PROGRAM CHGFMT
        CHARACTER*20 MYSTR
        CHARACTER*50 LINE
        REAL VAL

        MYSTR = '34.567'
        READ(MYSTR, '(F6.2)', IOSTAT=IOS) VAL
        IF (IOS .EQ. 0) THEN
          PRINT *, 'CONVERSION SUCCESSFUL'
          PRINT *, 'MYSTR = ', MYSTR
          PRINT 100, VAL
        ELSE
          PRINT *, 'CONVERSION FAILED'  
        ENDIF
100     FORMAT('VALUE = ',F6.3)  
        
        PRINT 200, VAL
200     FORMAT(E10.5)    

        LINE = '34 5.678'
        READ(LINE, '(I4,F5.3)') N1, V1
        PRINT 300, N1, V1
300     FORMAT('N1=',I4,X,'V1=',F5.3)    
    
      END PROGRAM