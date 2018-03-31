defmodule Network.Client do
  def add_node(address) do
    GenServer.cast(__MODULE__, {:add_node, address})
  end

  def send_to(data = %Packet{}, address) do
    GenServer.cast(__MODULE__, {:send_to, data, address})
  end
end
