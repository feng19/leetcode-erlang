%%%-------------------------------------------------------------------
%%% @doc
%%% index: 13
%%% name: Roman to Integer
%%% describe: 罗马数字转整数
%%% difficulty: 简单
%%% url: https://leetcode-cn.com/problems/roman-to-integer
%%% solution_url: https://leetcode-cn.com/problems/roman-to-integer/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_13_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual(3, algorithms_13:do("III")),
        ?_assertEqual(4, algorithms_13:do("IV")),
        ?_assertEqual(9, algorithms_13:do("IX")),
        ?_assertEqual(27, algorithms_13:do("XXVII")),
        ?_assertEqual(58, algorithms_13:do("LVIII")),
        ?_assertEqual(1994, algorithms_13:do("MCMXCIV"))
    ].
