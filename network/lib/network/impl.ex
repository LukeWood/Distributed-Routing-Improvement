defmodule Network.Impl do
  def add_node(address, state = %{nodes: nodes}) do
    state |>
    Map.put(:nodes,
      Map.put_new_lazy(nodes, address, fn -> NetworkNode.new(address) end)
    )
  end

  def send_to(data = %Packet{}, address, state = %{nodes: nodes}) do
    node_pid = Map.get(nodes, address)
    NetworkNode.send_data(node_pid, data)
    state
  end
end
