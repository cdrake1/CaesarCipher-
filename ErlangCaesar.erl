-module(main).
-export([start/0]).

%%shiftList(ThisChar, ShiftB) ->
  %if
    %ThisChar == 32 ->
      
  %true ->
   %   ww
      
encrypt(ThatList, ShiftB, CountT) ->

  
  
	if 
		CountT < length(ThatList) -> 
      io:fwrite("~w~n", [lists:nth(CountT, ThatList)]),
			encrypt(ThatList, ShiftB, CountT + 1);
		true ->
			ok
	end.

decrypt(ThisList, ShiftA, CountO) ->
  
	if 
		CountO < length(ThisList) -> 
      io:fwrite("~w~n", [lists:nth(CountO, ThisList)]),
			encrypt(ThisList, ShiftA, CountO + 1);
		true ->
			ok
	end.

start() ->
	TestString = "Bugs Bunny",
	ShiftPos = 7,
  ShiftNeg = -7,
	Test = 1,
	TestLower = string:to_lower(TestString),
	CharList = re:split(TestLower, ""),
	Encrypted = encrypt(CharList, ShiftPos, Test),
  Decrypted = decrypt(CharList, ShiftNeg, Test).


%%%%%


-module(main).
-export([start/0]).

%%shiftList(ThisChar, ShiftB) ->
  %if
    %ThisChar == 32 ->
      
  %true ->
   %   ww
      
encrypt(ThatList, ShiftB, CountT) ->

  io:fwrite("~p~n", [ShiftB]),
  lists:map(fun(I) -> I + ShiftB end, ThatList).

	

decrypt(ThisList, ShiftA, CountO) ->
  
	if 
		CountO < length(ThisList) -> 
      io:fwrite("~w~n", [lists:nth(CountO, ThisList)]),
			encrypt(ThisList, ShiftA, CountO + 1);
		true ->
			ok
	end.

start() ->
	TestString = "Bugs Bunny",
	Test = 1,
	TestLower = string:to_lower(TestString),
	CharList = re:split(TestLower, ""),
	Encrypted = encrypt(CharList, 7, Test),
  Decrypted = decrypt(CharList,-7, Test).
