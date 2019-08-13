%%%-------------------------------------------------------------------
%%% @doc
%%% index: 12
%%% name: Integer to Roman
%%% describe: 整数转罗马数字
%%% difficulty: 中等
%%% url: https://leetcode-cn.com/problems/integer-to-roman
%%% solution_url: https://leetcode-cn.com/problems/integer-to-roman/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_12_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual("III", algorithms_12:do(3)),
        ?_assertEqual("IV", algorithms_12:do(4)),
        ?_assertEqual("IX", algorithms_12:do(9)),
        ?_assertEqual("XXVII", algorithms_12:do(27)),
        ?_assertEqual("LVIII", algorithms_12:do(58)),
        ?_assertEqual("MCMXCIV", algorithms_12:do(1994))
    ].
