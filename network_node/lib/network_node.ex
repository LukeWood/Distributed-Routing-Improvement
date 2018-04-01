defmodule NetworkNode do
  use GenServer

  defdelegate start_link(opts), to: NetworkNode.Init
  defdelegate init(args),      to: NetworkNode.Init

  defdelegate new(address),     to: NetworkNode.DynamicSupervisor

  defdelegate send_data(pid, data), to: NetworkNode.Client

  defstruct [
    address: nil,
    neighbors: [],
    route_fn: nil,
    send_fn:  nil,
    used_wires: %{},
  ]
end
