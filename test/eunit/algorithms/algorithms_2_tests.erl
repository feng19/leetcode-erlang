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
-module(algorithms_2_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual([7, 0, 8], algorithms_2:do([2, 4, 3], [5, 6, 4])),
        ?_assertEqual([0, 2, 2], algorithms_2:do([0, 1], [0, 1, 2])),
        ?_assertEqual([0, 1], algorithms_2:do([], [0, 1])),
        ?_assertEqual([0, 0, 1], algorithms_2:do([9, 9], [1]))
    ].
