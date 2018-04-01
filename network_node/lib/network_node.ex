defmodule NetworkNode do
  defdelegate new(address),         to: NetworkNode.DynamicSupervisor

  defdelegate send_data(pid, data), to: NetworkNode.Client
  defdelegate add_neighbor(pid, neighbor_address),       to: NetworkNode.Client

  defstruct [
    address: nil,
    neighbors: [],
    route_fn: nil,
    send_fn:  nil,
    extra_data: nil
  ]
end
