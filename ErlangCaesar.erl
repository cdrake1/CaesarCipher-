-module(main).
-export([start/0]).

shiftList(ThisChar, ShiftC) ->
  if
    ThisChar == " " -> " ";  % check if its a space, return it
    
    ThisChar >= 97 && ThisChar <= 122 -> % check if its between lowercase a and z
      Shifted = ThisChar + ShiftC; % return + 7
      
    true -> ThisChar
  end.
      
encrypt(ThatList, ShiftB, CountT) ->

  Encrypted = lists:map(fun(I) -> shiftList(I , ShiftB) end, ThatList), % map each character to shiftList string
  io:format("~s~n", [Encrypted]). 

	

decrypt(ThisList, ShiftA, CountO) ->
  % check to iterate and print out each letter
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
	TestLower = string:to_lower(TestString), % make lower
	CharList = re:split(TestLower, ""), % make a list of subtrings for each character
	Encrypted = encrypt(CharList, 7, Test), % pass to function
  Decrypted = decrypt(CharList,-7, Test). % pass to function
