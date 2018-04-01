defmodule Network do
  defdelegate start(args, opts),      to: Network.Init

  defdelegate add_node(address),      to: Network.Client
  defdelegate send_to(data, address), to: Network.Client
  defdelegate nodes(),                to: Network.Client
  defstruct [
    nodes: %{}
  ]
end
