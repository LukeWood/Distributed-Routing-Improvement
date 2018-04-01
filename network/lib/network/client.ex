defmodule Network.Client do
  def add_node(address) do
    GenServer.cast(Network, {:add_node, address})
  end

  def send_to(data = %Packet{}, address) do
    GenServer.cast(Network, {:send_to, data, address})
  end

  def nodes() do
    GenServer.call(Network, :nodes)
  end

end
