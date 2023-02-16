
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
           01 shiftcipher PIC 99 VALUE 7.
        
        PROCEDURE DIVISION.
           CALL 'ENCRYPT' USING test1, shiftcipher.
           
        STOP RUN.
        
        IDENTIFICATION DIVISION.
        PROGRAM-ID. ENCRYPT.
    
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 temp Pic x(25).
         01 I Pic 9(01).
           LINKAGE SECTION.
           01 teststr PIC X(20).
           01 shiftc PIC 99.
        
        PROCEDURE DIVISION USING teststr, shiftc.
           Display Function Lower-case(teststr).
           Move Function Lower-case(teststr) to temp
           
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > FUNCTION 
           LENGTH(temp)
                IF FUNCTION ORD (temp(I:I)) >= 97 AND 
                FUNCTION ORD (temp(I:I)) <= 122 THEN
                    MOVE FUNCTION CHAR( FUNCTION MOD(FUNCTION ORD
                    (temp(I:I)) - 97 + shiftc, 26) + 97) TO temp(I:I)
                END-IF
                Display temp
           END-PERFORM.
            CALL 'DECRYPT' USING temp, shiftc.

        END PROGRAM ENCRYPT.
        
        IDENTIFICATION DIVISION.
        PROGRAM-ID. DECRYPT.
    
        DATA DIVISION.
        WORKING-STORAGE SECTION.
         01 J Pic 9(01).
           LINKAGE SECTION.
           01 tempd PIC X(20).
           01 shiftb PIC 99.
        
        PROCEDURE DIVISION USING tempd, shiftb.
           
           PERFORM VARYING J FROM 1 BY 1 UNTIL J > FUNCTION 
           LENGTH(tempd)
                IF FUNCTION ORD (tempd(J:J)) >= 97 AND 
                FUNCTION ORD (tempd(J:J)) <= 122 THEN
                    MOVE FUNCTION CHAR( FUNCTION MOD(FUNCTION ORD
                    (tempd(J:J)) - 97 + shiftb, 26) + 97) TO tempd(J:J)
                END-IF
                Display tempd
           END-PERFORM.

        END PROGRAM DECRYPT.
