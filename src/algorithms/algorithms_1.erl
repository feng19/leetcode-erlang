%%%-------------------------------------------------------------------
%%% @doc
%%% index: 1
%%% name: Two Sum
%%% describe: 两数之和
%%% difficulty: 简单
%%% url: https://leetcode-cn.com/problems/two-sum
%%% solution_url: https://leetcode-cn.com/problems/two-sum/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_1).

%% API
-export([
    do/2
]).

-spec do([integer()], integer()) -> {integer(), integer()}.
do(NumList, Target) ->
    do1(0, NumList, Target).
do1(Index, [N1 | NumList], Target) ->
    case do1(Index, N1, Index + 1, NumList, Target) of
        nil ->
            do1(Index + 1, NumList, Target);
        Return -> Return
    end;
do1(_Index, [], _Target) -> nil.

do1(Index1, N1, Index2, [N2 | _NumList], Target) when N1 + N2 == Target ->
    {Index1, Index2};
do1(Index1, N1, Index2, [_N2 | NumList], Target) ->
    do1(Index1, N1, Index2 + 1, NumList, Target);
do1(_Index1, _N1, _Index2, [], _Target) ->
    nil.