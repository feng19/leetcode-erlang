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
-module(algorithms_7).

%% API
-export([
    do/1
]).

do(Int) ->
    do(0, Int).
do(Rev, Int) when Int < 10 andalso Int > -10 ->
    Rev * 10 + Int;
do(Rev, Int) ->
    Pop = Int rem 10,
    do((Rev * 10) + Pop, Int div 10).