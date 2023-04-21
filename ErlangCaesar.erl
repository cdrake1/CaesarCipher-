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

  EncryptString = lists:map(fun(I) -> shiftList(I , ShiftB) end, TestOne), % map each character to shiftList function
  io:format("~s~n", [EncryptString]),
  EncryptString.

decrypt(TestTwo, ShiftC) ->
%working but not correct
  DecryptString = encrypt(TestTwo, ShiftC),
  DecryptString.

solve(Original, ShiftD, Count) ->
% not working
  if 
    Count < 26 ->
      Solved = Original,
      Solve = encrypt(Solved, Count),
      io:format("~s~n", [Solve]),
      CountTemp = Count + 1,
      solve(Solve, ShiftD, CountTemp);
    true ->
      undefined
  end.

start() ->
	TestString = "Bugs Bunny",
	TestLower = string:to_lower(TestString), % make lower
	Encrypted = encrypt(TestLower, 7), % pass to function
	Decrypted = decrypt(Encrypted,-7), % pass to function
	solve(Decrypted, 1, 26).
