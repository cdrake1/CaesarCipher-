-module(main).
-export([encrypt/2, start/0]).

encrypt(AsciiList, ShiftA) ->
	io:fwrite("~w~n", [AsciiList]),
	io:fwrite("~w~n", [ShiftA]).

start() ->
  TestString = "Bugs Bunny",
  ShiftAmount = 7,
  TestLower = string:to_lower(TestString),
  CharList = re:split(TestLower, ""),
  %%io:fwrite("~w~n", [IntList]),
  encrypt(CharList, ShiftAmount).
