%%%-------------------------------------------------------------------
%%% @doc
%%% index: 4
%%% name: Median of Two Sorted Arrays
%%% describe: 寻找两个有序数组的中位数
%%% difficulty: 困难
%%% url: https://leetcode-cn.com/problems/median-of-two-sorted-arrays
%%% solution_url: https://leetcode-cn.com/problems/median-of-two-sorted-arrays/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_4_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual(3.5, algorithms_4:do([1, 2, 3], [4, 5, 6])),
        ?_assertEqual(3.5, algorithms_4:do([4, 5, 6], [1, 2, 3])),
        ?_assertEqual(2.0, algorithms_4:do([1, 3], [2])),
        ?_assertEqual(2.5, algorithms_4:do([1, 2], [3, 4])),
        ?_assertEqual(4.0, algorithms_4:do([1, 4, 7, 9], [2, 3, 5])),
        ?_assertEqual(6.5, algorithms_4:do([-1, 1, 3, 5, 7, 9], [2, 4, 6, 8, 10, 12, 14, 16]))
    ].
