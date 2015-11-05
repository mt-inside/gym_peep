Main
====

Build with: mix compile
Run as: iex -S mix [run]
* Just let it sit in the prompt; the app load callback starts everything.

Build stand-alone erlang app (with elixir packaged in) with: mix escript.build
Run as: unsure. ./gym\_peep complains it can't find main/1 in GymPeep, but I thought that came from the Application behaviour

Note: binds to port 7777 (doesn't require root).
Ideally would bind to 80 and be run in a container and port-mapped out.
