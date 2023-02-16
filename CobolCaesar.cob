      * 
      * Welcome to Programming in the Past
      * Collin Drake
      * Creating a Caesar Cipher in COBOl
      * Lots of problems occurring. Not sure what to do
      * 
      
        IDENTIFICATION DIVISION.
        PROGRAM-ID. CAESARSALAD.
              
        DATA DIVISION.
        WORKING-STORAGE SECTION.
      
           01 test1 PIC X(20) VALUE "BuGs BunnY".
           01 test2 PIC X(25) VALUE "Spaghetti and Meatballs".
           01 test3 PIC X(20) VALUE "Hello World".
           01 shiftcypher PIC 9 VALUE 7.
      
        PROCEDURE DIVISION.
           CALL 'ENCRYPT' USING test1, shiftcypher.
      
          
           STOP RUN.
      
      
        IDENTIFICATION DIVISION.
        PROGRAM-ID. ENCRYPT.
          
        DATA DIVISION.
        LINKAGE SECTION.
      
           01 test1 PIC X(20).
           01 shiftcypher PIC 9.
          
        PROCEDURE DIVISION USING test1 shiftcypher.
           DISPLAY test1.
      
      
           EXIT PROGRAM.
        
