defmodule Network do
  defdelegate start_link(params), to: Network.Init

  defdelegate add_node(address),   to: Network.Client
  defdelegate send_to(data, address), to: Network.Client

  defstruct [
    nodes: %{}
  ]
end
