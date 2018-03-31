defmodule NetworkNode do
  defdelegate start_link(opts), to: NetworkNode.Init

  defstruct [
    :ip_address,
    neighbors: [],
    used_wires: %{},
    routing_table: %{}
  ]
end
