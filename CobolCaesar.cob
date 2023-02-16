
      * Welcome to TOPL Programmin In The Past
      * Collin Drake
      * 
      * 
      * 
      * 
        IDENTIFICATION DIVISION.
        PROGRAM-ID. Caesar-salad.
        
        DATA DIVISION.
           WORKING-STORAGE SECTION.
           01 test1 PIC X(20) VALUE 'Bugs Bunny'.
           01 test2 PIC X(20) VALUE 'Hello World'.
           01 test3 PIC X(20) VALUE 'Spaghetti and Meatballs'.
           01 shiftcipher PIC 99 VALUE 7.
        
        PROCEDURE DIVISION.
        
           DISPLAY 'Your string: ', test1
           CALL 'ENCRYPT' USING test1, shiftcipher.
           
        STOP RUN.
        
        IDENTIFICATION DIVISION.
        PROGRAM-ID. ENCRYPT IS COMMON.
    
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 temp Pic x(25).
         01 X Pic 99(01).
           LINKAGE SECTION.
           01 teststr PIC X(20).
           01 shiftc PIC 99.
        
        PROCEDURE DIVISION USING teststr, shiftc.
            DISPLAY 'Your string in lower-case: ',
            Function Lower-case(teststr).
           Move Function Lower-case(teststr) to temp
           
           PERFORM VARYING X FROM 1 BY 1 UNTIL X > FUNCTION LENGTH(temp)
                IF FUNCTION ORD (temp(X:1)) >= 97 AND 
                FUNCTION ORD (temp(X:1)) <= 122 THEN
                    MOVE FUNCTION CHAR(FUNCTION MOD(FUNCTION ORD
                    (temp(X:1)) - 97 + shiftc, 26) + 97) TO temp(X:1)
                END-IF
           END-PERFORM.
           DISPLAY 'Your string encrypted: ',temp
           CALL 'DECRYPT' USING temp, shiftc.
    
        END PROGRAM ENCRYPT.
        
        IDENTIFICATION DIVISION.
        PROGRAM-ID. DECRYPT IS COMMON.
    
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 Y Pic 99(01).
           LINKAGE SECTION.
           01 tempd PIC X(20).
           01 shiftb PIC 99.
        
        PROCEDURE DIVISION USING tempd, shiftb.
           
           PERFORM VARYING Y FROM 1 BY 1 UNTIL Y > FUNCTION 
           LENGTH(tempd)
                IF FUNCTION ORD (tempd(Y:1)) >= 97 AND 
                FUNCTION ORD (tempd(Y:1)) <= 122 THEN
                    MOVE FUNCTION CHAR( FUNCTION MOD(FUNCTION ORD
                    (tempd(Y:1)) - 97 - shiftb, 26) + 97) TO tempd(Y:1)
                END-IF
           END-PERFORM.
           DISPLAY 'Your string decrypted: ', tempd.

        END PROGRAM DECRYPT.
        
        
       
