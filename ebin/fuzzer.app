%%-*- mode: erlang -*-
{application, fuzzer,
 [
  {description, "fuzzer"},
  {vsn, "1"},
  {modules, [
             fuzzer,
             fuzzer_app,
             fuzzer_sup,
             fuzzer_resource,
             fuzzer_foo
            ]},
  {registered, []},
  {applications, [
                  kernel,
                  stdlib,
                  crypto,
                  mochiweb,
                  webmachine
                 ]},
  {mod, { fuzzer_app, []}},
  {env, []}
 ]}.
