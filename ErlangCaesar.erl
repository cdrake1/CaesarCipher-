-module(main).
-export([start/0]).

shiftList(A, ShiftA) ->
  if
    (A >= 97) and (A =< 122) -> %check if lowercase
      Shifted = (A - 97 + ShiftA) rem 26, %shift and wrap alphabet
      if
        (Shifted < 0) -> Shifted + 26; %check if shifted variable drops below 0
        true -> Shifted
      end + 97;
    (A == 32) -> %check if its a space
      A;
    true -> %if not lowercase or space return NUL/Undefined
      undefined
  end.
   
encrypt(TestOne, ShiftB) ->

  EncryptString = lists:map(fun(I) -> shiftList(I , ShiftB) end, TestOne), %map each character to shiftList function
  EncryptString.

decrypt(TestTwo, ShiftC) ->
  DecryptString = encrypt(TestTwo, ShiftC), %call encrypt with reverse shift amount
  DecryptString.

solve(Original, ShiftD, Count) ->
  if 
    Count < 26 -> %check if looped all the way through
      Solved = Original,
      Solve = lists:map(fun(J) -> shiftList(J , ShiftD) end, Solved), %shift for each letter
      io:format("~s~n", [Solve]),
      CountTemp = Count + 1, %increase count
      solve(Solve, ShiftD, CountTemp); %recursion
    true -> %return NUL/Undefined if count >= 26
      undefined
  end.

start() ->
	TestString = "Bugs Bunny",
	TestLower = string:to_lower(TestString), % make lower
	Encrypted = encrypt(TestLower, 7), %call encrypt
	Decrypted = decrypt(Encrypted,-7), %call decrypt
	io:format("~s~n", [TestLower]),
	io:format("~s~n", [Encrypted]),
	io:format("~s~n", [Decrypted]),
	solve(Decrypted, 1, 0). %call solve
