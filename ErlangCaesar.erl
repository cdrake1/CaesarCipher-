-module(main).
-export([encrypt/3, start/0]).

encrypt(AsciiList, ShiftA, Count) ->
  
	if 
		Count < length(AsciiList) -> 
			io:fwrite("~w~n", [lists:nth(Count, AsciiList)]),
			encrypt(AsciiList, ShiftA, Count + 1);
		true ->
			ok
	end.

start() ->
	TestString = "Bugs Bunny",
	ShiftAmount = 7,
	Test = 1,
	TestLower = string:to_lower(TestString),
	CharList = re:split(TestLower, ""),
	encrypt(CharList, ShiftAmount, Test).
