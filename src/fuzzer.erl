%% @author author <author@example.com>
%% @copyright YYYY author.

%% @doc TEMPLATE.

-module(fuzzer).
-author('author <author@example.com>').
-export([start/0, stop/0]).

ensure_started(App) ->
    case application:start(App) of
        ok ->
            ok;
        {error, {already_started, App}} ->
            ok
    end.

%% @spec start() -> ok
%% @doc Start the fuzzer server.
start() ->
    fuzzer_deps:ensure(),
    ensure_started(crypto),
    application:start(fuzzer).

%% @spec stop() -> ok
%% @doc Stop the fuzzer server.
stop() ->
    Res = application:stop(fuzzer),
    application:stop(crypto),
    Res.
