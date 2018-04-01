defmodule NetworkNode.Server do
  use GenServer
  alias NetworkNode.Impl, as: Impl

  def init(args) do
    {:ok, args}
  end
  def start_link(address) do
    GenServer.start_link(NetworkNode.Server, %NetworkNode{address: address})
  end

  def handle_cast({:send_data, data = %Packet{}}, state) do
    Impl.send_data(data, state)
    {:noreply, state}
  end

  def handle_cast({:add_neighbor, neighbor_address}, state = %NetworkNode{neighbors: neighbors}) do
    {:noreply, Map.put(state, :neighbors, [neighbor_address | neighbors])}
  end

end
