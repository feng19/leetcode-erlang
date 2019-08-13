%%%-------------------------------------------------------------------
%%% @doc
%%% index: 13
%%% name: Roman to Integer
%%% describe: 罗马数字转整数
%%% difficulty: 简单
%%% url: https://leetcode-cn.com/problems/roman-to-integer
%%% solution_url: https://leetcode-cn.com/problems/roman-to-integer/solution
%%% @end
%%%-------------------------------------------------------------------
-module(algorithms_13).

%% API
-export([
    do/1
]).

% range: 1-3999
do([$C, $M | Roman]) ->
    900 + do(Roman);
do([$C, $D | Roman]) ->
    400 + do(Roman);
do([$X, $C | Roman]) ->
    90 + do(Roman);
do([$X, $L | Roman]) ->
    40 + do(Roman);
do([$I, $X | Roman]) ->
    9 + do(Roman);
do([$I, $V | Roman]) ->
    4 + do(Roman);
do([$M | Roman]) ->
    1000 + do(Roman);
do([$D | Roman]) ->
    500 + do(Roman);
do([$C | Roman]) ->
    100 + do(Roman);
do([$L | Roman]) ->
    50 + do(Roman);
do([$X | Roman]) ->
    10 + do(Roman);
do([$V | Roman]) ->
    5 + do(Roman);
do([$I | Roman]) ->
    1 + do(Roman);
do([]) -> 0.

