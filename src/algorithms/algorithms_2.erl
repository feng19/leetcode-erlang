%%%-------------------------------------------------------------------
%%% @doc
%%% index: 2
%%% name: Add Two Numbers
%%% describe: 两数相加
%%% difficulty: 中等
%%% url: https://leetcode-cn.com/problems/add-two-numbers
%%% solution_url: https://leetcode-cn.com/problems/add-two-numbers/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_2).

%% API
-export([
    do/2
]).

do(List1, List2) ->
    do(0, List1, List2).
do(Carry, [N1 | List1], [N2 | List2]) ->
    do_next(N1 + N2 + Carry, List1, List2);
do(Carry, [], [N2 | List2]) ->
    do_next(N2 + Carry, [], List2);
do(Carry, [N1 | List1], []) ->
    do_next(N1 + Carry, List1, []);
do(0, [], []) -> [];
do(Carry, [], []) -> [Carry].

do_next(N, List1, List2) when N >= 10 ->
    [N - 10 | do(1, List1, List2)];
do_next(N, List1, List2) ->
    [N | do(0, List1, List2)].
