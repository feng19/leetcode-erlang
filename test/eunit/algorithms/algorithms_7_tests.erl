%%%-------------------------------------------------------------------
%%% @doc
%%% index: 7
%%% name: Reverse Integer
%%% describe: 整数反转
%%% difficulty: 简单
%%% url: https://leetcode-cn.com/problems/reverse-integer
%%% solution_url: https://leetcode-cn.com/problems/reverse-integer/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_7_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual(321, algorithms_7:do(123)),
        ?_assertEqual(-321, algorithms_7:do(-123)),
        ?_assertEqual(-21, algorithms_7:do(-120)),
        ?_assertEqual(21, algorithms_7:do(120)),
        ?_assertEqual(1, algorithms_7:do(100))
    ].
