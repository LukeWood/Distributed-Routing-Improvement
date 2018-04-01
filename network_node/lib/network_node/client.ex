defmodule NetworkNode.Client do
  def send_data(pid, data) do
    GenServer.cast(pid, {:send_data, data})
  end
  def add_neighbor(pid, neighbor_address) do
    GenServer.cast(pid, {:add_neighbor, neighbor_address})
  end
end
