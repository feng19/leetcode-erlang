%%%-------------------------------------------------------------------
%%% @doc
%%% index: 8
%%% name: String to Integer (atoi)
%%% describe: 字符串转换整数 (atoi)
%%% difficulty: 中等
%%% url: https://leetcode-cn.com/problems/string-to-integer-atoi
%%% solution_url: https://leetcode-cn.com/problems/string-to-integer-atoi/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_8).

%% API
-export([
    do/1
]).

do(Str0) ->
    Str = string:strip(Str0),
    case do_first(Str) of
        I when I > 2147483648 -> 2147483648;
        I when I < -2147483648 -> -2147483648;
        I -> I
    end.

do_first([I | Str]) when I >= $0 andalso I =< $9 ->
    do_other(I - $0, Str);
do_first([$- | Str]) ->
    -do_other(0, Str);
do_first(_Str) -> 0.

do_other(Rev, [I | Str]) when I >= $0 andalso I =< $9 ->
    do_other((Rev * 10) + (I - $0), Str);
do_other(Rev, _Str) -> Rev;
do_other(Rev, []) -> Rev.