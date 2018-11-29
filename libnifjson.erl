-module(libnifjson).

-export([exec_func/3]).

-export([init/0, start/0]).

init() ->
    erlang:load_nif("./libnifjson", 0).

start() ->
    LibName = "./libdata_report.so",
    FuncName = "data_report",
    Input = "{\"reportfrom\":\"3761\",\"analyframe\":\"687603760368c430854919000d790000011ee124d1e991b57a988f517747416700e9e078392e38c8aab75414f0e901b4df1491517ac74257644b1e2f39c060f13ec4ec5963099bd63205ce42c825376f1322fe0c1cd18bbce45830e56ef72b7848c6c686f3d90294171eea87175f2b2b6ab2edbdfb859fbaa2d508ccc4a859df66862746074be8e091f428f3cf983779162c8afd4c4bde83d4ede895ea5739f3d12bfd68f5584ee5c0fae2c873e7248ba13ea438e655a3b0b37d6863f4b7b06ec87ff9effab8e692dcacc1984b2db88a9d7991183ab0a7f1dcd13df7a7d72ddab7d734a516\",\"mainkey\":\"0DD1F70B5F3A0B95C22126872845114A\"}",
    Output = exec_func(LibName, FuncName,Input),
    io:format("Out:~p~n",[Output]).

exec_func(_LibName, _FuncName, _Input) ->
    %%error:nif_error(nif_library_not_loaded).
    io:format("NIF library not loaded~n",[]).
