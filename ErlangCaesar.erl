-module(prog).
-export([encrypt/2, main/0]).

encrypt(AsciiList, ShiftA) ->
	io:fwrite("~p~n", [AsciiList]),
	io:fwrite("~p~n", [ShiftA]).
	

main() ->
	TestString = "Bugs Bunny",
	ShiftAmount = 7,
	TestLower = string:to_lower(TestString),
	IntList = lists:map(fun erlang:integer_to_list/1, TestLower),
	%% CharList = re:split(TestLower, ""),
	%%io:fwrite("~p~n", [IntList]),
	encrypt(IntList, ShiftAmount).
