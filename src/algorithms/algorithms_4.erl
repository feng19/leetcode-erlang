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
-module(algorithms_4).

%% API
-export([
    do/2
]).

%% 这道题如果时间复杂度没有限定在 O(log(m+n)),
%% 我们可以用 O(m+n) 的算法解决,用两个指针分别指向两个数组,
%% 比较指针下的元素大小,一共移动次数为 (m+n+1)/2,便是中位数
do(List1, List2) ->
    Len1 = length(List1),
    Len2 = length(List2),
    Len = Len1 + Len2 + 1,
    % 长度短的放前面
    case Len1 < Len2 of
        true ->
            do(Len, List1, List2);
        _ ->
            do(Len, List2, List1)
    end.
do(Len, List1, List2) ->
    Median = Len div 2,
    case Len rem 2 of
        0 -> %% 长度奇数 只取一个
            {M, _} = do(1, Median, List1, List2),
            M * 1.0;
        _ -> %% 偶数
            {M1, M2} = do(1, Median, List1, List2),
            (M1 + M2) / 2
    end.

do(Median, Median, List1, List2) ->
    {N1, NewList1, NewList2} = find_next(List1, List2),
    {N2, _, _} = find_next(NewList1, NewList2),
    {N1, N2};
do(Index, Median, List1, List2) ->
    {_N, NewList1, NewList2} = find_next(List1, List2),
    do(Index + 1, Median, NewList1, NewList2).

find_next([], [N2 | NewList2]) ->
    {N2, [], NewList2};
find_next([N1 | NewList1], []) ->
    {N1, NewList1, []};
find_next([N1 | NewList1], [N2 | _NewList2] = List2) when N1 < N2 ->
    {N1, NewList1, List2};
find_next(List1, [N2 | NewList2]) ->
    {N2, List1, NewList2}.