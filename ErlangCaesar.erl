-module(prog).
-export([main/0]).

main() ->
	TestString = "Bugs Bunny",
	ShiftAmount = 7,
	
	io:fwrite("~p~n", [TestString]).
