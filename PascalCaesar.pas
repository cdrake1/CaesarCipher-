{

Welcome to Programming In The Past assignment for Theory Of Programming Languages
This is my Pascal encrypt, decrpyt and solve Caesar Cypher
Collin Drake
Started January 30th 2023

}
!!!figure out solve!!!!!!

program Caesar_Salad;

var
    test1, test2, test3 : string;
    shiftcypher : integer;
    
procedure problemsolve(teststr : string; shiftcy : integer);
var
    i : integer;
    j : integer;
    totalshift : integer;
    fixshift : integer;
begin
    teststr := lowercase(teststr);
    writeln('Your string in lowercase: ', teststr);
    
    for i := 1 to length(teststr) do
    begin
        if (ord(teststr[i]) >=97) and (ord(teststr[i]) <= 122) then 
            if (ord(teststr[i]) = 32) then 
                teststr[i] := char(32)
            
            else 
                teststr[i] := chr(((ord(teststr[i]) - 97 + shiftcy) mod 26) + 97);
    end;
    writeln('This is your encrypted string: ',teststr);
    
    fixshift := 26 - shiftcy;
    
    
    for i := 1 to length(teststr) do
    begin
        if (ord(teststr[i]) >=97) and (ord(teststr[i]) <= 122) then 
            if (ord(teststr[i]) = 32) then 
                teststr[i] := char(32)
            
            else 
                teststr[i] := chr(((ord(teststr[i]) - 97 + fixshift) mod 26) + 97);
    end;
    writeln('This is your decrypted string: ', teststr);
    
    writeln('This is your solve string: ');
    totalshift := 1;
    
    for i := 1 to 26 do
    begin
    
        for j := 1 to length(teststr) do 
        begin
            if (ord(teststr[i]) >=97) and (ord(teststr[i]) <= 122) then 
                teststr[i] := chr(((ord(teststr[i]) - 97 + totalshift) mod 26) + 97);
                
        end;
        writeln(teststr);
        
    end;
    
end;



begin
  test1 := 'Bugs Bunny';
  test2 := 'Hello World My Name Is Collin Drake';
  test3 := 'The Broom Was Late to School Because he overSWEPT';
  shiftcypher := 7;
  
    problemsolve(test1,shiftcypher);
  
end.