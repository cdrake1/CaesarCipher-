-module(main).
-export([start/0]).

shiftList(ThisChar, ShiftC) ->
  if
    ThisChar == " " -> " ";
    
    ThisChar >= 97 && ThisChar <= 122 ->
      Shifted = ThisChar + ShiftC;
      
    true -> ThisChar
  end.
      
encrypt(ThatList, ShiftB, CountT) ->

  Shifts = lists:map(fun(I) -> shiftList(I , ShiftB) end, ThatList),
  io:format("~s~n", [Shifts]).

	

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
