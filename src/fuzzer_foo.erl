%% @author Elliot Murphy <elliot@elliotmurphy.com>
%% @copyright 2010 Elliot Murphy.
%% @doc Fuzzer endpoint.

-module(fuzzer_foo).
-export([init/1]).
-export([allowed_methods/2,
         process_post/2]).

-include_lib("webmachine/include/webmachine.hrl").

init(_) -> {ok, undefined}.

allowed_methods(ReqData, Context) ->
    {['POST'], ReqData, Context}.

process_post(ReqData, Context) ->
    %%io:format("hello~n"),
    Body = wrq:req_body(ReqData),
    {true, wrq:append_to_response_body(Body, ReqData), Context}.

json_body(QS) -> mochijson2:encode({struct, QS}).
