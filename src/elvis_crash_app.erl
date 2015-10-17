-module(elvis_crash_app).

-behaviour(application).

%% Application callbacks
-export([start/2, stop/1]).

%% ===================================================================
%% Application callbacks
%% ===================================================================

start(_StartType, _StartArgs) ->
    _LogStrLeave = lists:flatten(io_lib:format("< ~s(~s), Result: ~~10000000p", ["ok", "ok"])),
    elvis_crash_sup:start_link().

stop(_State) ->
    ok.
