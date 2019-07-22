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
-module(algorithms_3_tests).

-include_lib("eunit/include/eunit.hrl").

do_test_() ->
    [
        ?_assertEqual(3, algorithms_3:do("abcabcbb")),
        ?_assertEqual(1, algorithms_3:do("bbbbb")),
        ?_assertEqual(3, algorithms_3:do("pwwkew"))
    ].
