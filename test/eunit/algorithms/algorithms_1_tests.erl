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
-module(algorithms_1_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual({0, 1}, algorithms_1:do([2, 7, 11, 15], 9))
    ].
