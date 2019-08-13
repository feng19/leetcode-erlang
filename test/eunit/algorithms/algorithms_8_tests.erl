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
-module(algorithms_8_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual(42, algorithms_8:do(" 42")),
        ?_assertEqual(42, algorithms_8:do("42")),
        ?_assertEqual(-42, algorithms_8:do("-42")),
        ?_assertEqual(4193, algorithms_8:do("4193 with words")),
        ?_assertEqual(0, algorithms_8:do("words and 987")),
        ?_assertEqual(2147483648, algorithms_8:do("91283472332")),
        ?_assertEqual(-2147483648, algorithms_8:do("-91283472332"))
    ].
