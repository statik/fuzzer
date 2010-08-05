{application, fuzzer,
 [{description, "fuzzer"},
  {vsn, "0.01"},
  {modules, [
    fuzzer,
    fuzzer_app,
    fuzzer_sup,
    fuzzer_web,
    fuzzer_deps
  ]},
  {registered, []},
  {mod, {fuzzer_app, []}},
  {env, []},
  {applications, [kernel, stdlib, crypto]}]}.
