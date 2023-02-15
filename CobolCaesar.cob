      * 
      * Welcome to GDB Online.
      * GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
      * C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
      * Code, Compile, Run and Debug online from anywhere in world.
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


                 * 
      * Welcome to GDB Online.
      * GDB online is an online compiler and debugger tool for C, C++, Python, Java, PHP, Ruby, Perl,
      * C#, OCaml, VB, Swift, Pascal, Fortran, Haskell, Objective-C, Assembly, HTML, CSS, JS, SQLite, Prolog.
      * Code, Compile, Run and Debug online from anywhere in world.
      * 
      
        IDENTIFICATION DIVISION.
        PROGRAM-ID. CAESARSALAD.
        ENVIRONMENT DIVISION.
        DATA DIVISION.
        WORKING-STORAGE SECTION.
        01 test1 PIC X(20) VALUE "BuGs BunnY".
        01 test2 PIC X(25) VALUE "Spaghetti and Meatballs".
        01 test3 PIC X(20) VALUE "Hello World".
        01 shiftcypher PIC 9 VALUE 7.
        01 SHIFTED-TEXT OCCURS 26 TIMES PIC X(80).
        PROCEDURE DIVISION.
      
          
        FUNCTION encrypt
            USING tes, shift
            
            LOCAL VARIABLES
                i PIC 9(4) VALUE 1.
            END-LOCAL
            
            PERFORM VARYING i FROM 1 BY 1 
                    UNTIL i > LENGTH of test1
                DISPLAY "HELLO"
            END PERFORM
        END FUNCTION
        
        MAIN PROCEDURE.
            encrypt(test1, shiftcypher)
            
            STOP RUN.
      
      
        