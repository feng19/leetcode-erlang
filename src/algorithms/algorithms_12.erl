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
-module(algorithms_12).

%% API
-export([
    do/1
]).

% range: 1-3999
do(Int) when Int =< 3999 andalso Int >= 1000 ->
    C = Int div 1000,
    lists:duplicate(C, $M) ++ do(Int - (C * 1000));
do(Int) when Int >= 900 ->
    [$C, $M | do(Int - 900)];
do(Int) when Int >= 500 ->
    [$D | do(Int - 500)];
do(Int) when Int >= 400 ->
    [$C, $D | do(Int - 400)];
do(Int) when Int >= 100 ->
    C = Int div 100,
    lists:duplicate(C, $C) ++ do(Int - (C * 100));
do(Int) when Int >= 90 ->
    [$X, $C | do(Int - 90)];
do(Int) when Int >= 50 ->
    [$L | do(Int - 50)];
do(Int) when Int >= 40 ->
    [$X, $L | do(Int - 40)];
do(Int) when Int >= 10 ->
    C = Int div 10,
    lists:duplicate(C, $X) ++ do(Int - (C * 10));
do(9) -> [$I, $X];
do(Int) when Int >= 5 ->
    [$V | do(Int - 5)];
do(4) -> [$I, $V];
do(Int) when Int > 0 ->
    lists:duplicate(Int, $I);
do(0) -> [].