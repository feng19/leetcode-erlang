%%%-------------------------------------------------------------------
%%% @doc
%%% index: 3
%%% name: Longest Substring Without Repeating Characters
%%% describe: 无重复字符的最长子串
%%% difficulty: 中等
%%% url: https://leetcode-cn.com/problems/longest-substring-without-repeating-characters
%%% solution_url: https://leetcode-cn.com/problems/longest-substring-without-repeating-characters/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_3).

%% API
-export([
    do/1
]).

do(List) ->
    do(List, [], 0, 0).

do([N | List], Acc, NowLen, MaxLen) ->
    case lists:member(N, Acc) of
        true ->
            case NowLen > MaxLen of
                true ->
                    do(List, [N], 1, NowLen);
                _ ->
                    do(List, [N], 1, MaxLen)
            end;
        _ ->
            do(List, [N | Acc], NowLen + 1, MaxLen)
    end;
do([], _Acc, NowLen, MaxLen) when NowLen > MaxLen ->
    NowLen;
do([], _Acc, _NowLen, MaxLen) ->
    MaxLen.