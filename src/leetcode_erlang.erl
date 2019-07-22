%%%-------------------------------------------------------------------
%%% @doc
%%%
%%% @end
%%%-------------------------------------------------------------------
-module(leetcode_erlang).
-tdata(ds).

%% API
-export([
    transform_defines/0
]).

transform_defines() ->
    [
        #{
            header_comments => false,
            % 输入文件列表 & 已经加载配置
            input_file_defines => [#{file => "algorithms.json", opts => []}],
            % 生成目标文件
            output_file => dynamic,
            % 转换数据函数
            transform_fun => fun transform_fun/1,
            % 模板文件
            tpl_type => mustache,
            tpl_file => dynamic
        },
        #{
            header_comments => false,
            % 输入文件列表 & 已经加载配置
            input_file_defines => [#{file => "algorithms.json", opts => []}],
            % 生成目标文件
            output_file => "README.md",
            % 转换数据函数
            transform_fun => fun readme_transform_fun/1,
            % 模板文件
            tpl_file => "README.md.tpl"
        }
    ].

readme_transform_fun([{_InputFile, Data}]) ->
    Subjects = [
        begin
            #{index := Index} = Map,
            Filename = "algorithms_" ++ binary_to_list(Index),
            Map#{filename => "/src/algorithms/" ++ Filename ++ ".erl"}
        end || Map <- Data],
    {ok, #{subjects => Subjects}}.

transform_fun([{_InputFile, Data}]) ->
%%    io:format("~p~n", [Data]),
    RenderOptions = [{key_type, atom}],
    lists:flatten([
        begin
            #{index := Index} = Map,
            Filename = "algorithms_" ++ binary_to_list(Index),
            EUnitFilename = "algorithms_" ++ binary_to_list(Index) ++ "_tests",
            [
                {ok, "src/algorithms/" ++ Filename ++ ".erl", Map#{filename => Filename}, RenderOptions, "erl.erl.tpl"},
                {ok, "test/eunit/algorithms/" ++ EUnitFilename ++ ".erl", Map#{filename => EUnitFilename}, RenderOptions, "eunit.erl.tpl"}
            ]
        end || Map <- Data]).