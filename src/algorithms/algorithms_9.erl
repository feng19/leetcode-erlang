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
-module(algorithms_9).

%% API
-export([
    do/1
]).

do(0) -> true;
do(Int) when Int =< 10 -> false;
do(Int) when (Int rem 10) == 0 -> false;
do(Int) ->
    {NewInt, RevertedNumber} = reverted_number(Int, 0),
    NewInt == RevertedNumber orelse NewInt == RevertedNumber div 10.

reverted_number(Int, RevertedNumber) when Int > RevertedNumber ->
    reverted_number(Int div 10, RevertedNumber * 10 + Int rem 10);
reverted_number(Int, RevertedNumber) -> {Int, RevertedNumber}.