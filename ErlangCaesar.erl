-module(main).
-export([start/0]).

shiftList(A, ShiftA) ->
  if
    (A >= 97) and (A =< 122) ->  %check if lowercase
      (A - 97 + ShiftA) rem 26 + 97;  %shift and wrap alphabet
    (A < 0) -> 
      A + 26;
    (A == 32) ->  %check if its a space
      A;
    true ->  %if not lowercase or space return NUL/Undefined
      undefined
  end.
      
encrypt(TestOne, ShiftB) ->

  EncryptString = lists:map(fun(I) -> shiftList(I , ShiftB) end, TestOne), %map each character to shiftList function
  io:format("~s~n", [EncryptString]),
  EncryptString.

decrypt(TestTwo, ShiftC) ->

  DecryptString = encrypt(TestTwo, ShiftC),  %call encrypt with reverse shift
  DecryptString.

start() ->
	TestString = "Bugs Bunny",
	TestLower = string:to_lower(TestString), %make lower
	Encrypted = encrypt(TestLower, 7), %pass to function
  Decrypted = decrypt(Encrypted,-7). %pass to function
