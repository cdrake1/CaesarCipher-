{

Welcome to Programming In The Past assignment for Theory Of Programming Languages
This is my Pascal encrypt, decrpyt and solve Caesar Cipher
Collin Drake
Started January 30th 2023

}

program Caesar_Salad;

var
    test1, test2, test3 : string;
    shiftcypher : integer;
    
procedure problemsolve(teststr : string; shiftcy : integer);
var
    i : integer;
    j : integer;
    totalshift : integer;
    maxshift : integer;
    fixshift : integer;
begin
    writeln('Your string: ', teststr);
    teststr := lowercase(teststr);
    writeln('Your string in lowercase: ', teststr);
    
    for i := 1 to length(teststr) do
    begin
        if (ord(teststr[i]) >=97) and (ord(teststr[i]) <= 122) then 
            teststr[i] := chr(((ord(teststr[i]) - 97 + shiftcy) mod 26) + 97);
    end;
    writeln('This is your encrypted string: ',teststr);
    
    fixshift := 26 - shiftcy;
    
    
    for i := 1 to length(teststr) do
    begin
        if (ord(teststr[i]) >=97) and (ord(teststr[i]) <= 122) then 
            teststr[i] := chr(((ord(teststr[i]) - 97 + fixshift) mod 26) + 97);
    end;
    writeln('This is your decrypted string: ', teststr);
    
    writeln('This is your solve string: ');
    writeln('Solve: ',teststr);
    totalshift := 1;
    maxshift := 26;
    
    for i := 1 to maxshift do
    begin
        for j := 1 to length(teststr) do 
        begin
            if (ord(teststr[j]) >=97) and (ord(teststr[j]) <= 122) then 
                teststr[j] := chr(((ord(teststr[j]) - 97 + totalshift) mod 26) + 97);
        end;
        writeln('Solve: ',teststr);
        
    end;
    
end;



begin
  test1 := 'Bugs Bunny';
  test2 := 'Hello World My Name Is Collin Drake';
  test3 := 'The Broom Was Late to School Because he overSWEPT';
  shiftcypher := 7;
  
    problemsolve(test1,shiftcypher);
  
end.
