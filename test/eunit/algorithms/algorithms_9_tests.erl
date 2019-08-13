%%%-------------------------------------------------------------------
%%% @doc
%%% index: 9
%%% name: Palindrome Number
%%% describe: 回文数
%%% difficulty: 简单
%%% url: https://leetcode-cn.com/problems/palindrome-number
%%% solution_url: https://leetcode-cn.com/problems/palindrome-number/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_9_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual(true, algorithms_9:do(0)),
        ?_assertEqual(false, algorithms_9:do(100)),
        ?_assertEqual(true, algorithms_9:do(121)),
        ?_assertEqual(false, algorithms_9:do(-121))
    ].
