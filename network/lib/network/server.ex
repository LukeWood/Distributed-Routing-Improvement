defmodule Network.Server do
  use GenServer
  alias Network.Impl, as: Impl

  def init(args) do
    {:ok, args}
  end

  def handle_cast({:add_node, address}, state) do
    {:noreply, Impl.add_node(address, state)}
  end

  def handle_call(:nodes, _from, state = %{nodes: nodes}) do
    {:reply, nodes, state}
  end
end
