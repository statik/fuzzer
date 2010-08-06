%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc Callbacks for the fuzzer application.

-module(fuzzer_app).
-author('author <author@example.com>').

-behaviour(application).
-export([start/2,stop/1]).


%% @spec start(_Type, _StartArgs) -> ServerRet
%% @doc application start callback for fuzzer.
start(_Type, _StartArgs) ->
    fuzzer_sup:start_link().

%% @spec stop(_State) -> ServerRet
%% @doc application stop callback for fuzzer.
stop(_State) ->
    ok.
