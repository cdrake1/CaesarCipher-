-module(prog).
-export([main/0]).

main() ->
	TestString = "Bugs Bunny",
	ShiftAmount = 7,
	TestLower = string:to_lower(TestString),
	CharList = re:split(TestLower, ""),
	io:fwrite("~p~n", [CharList]).
