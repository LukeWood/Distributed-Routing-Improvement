defmodule Network.Server do
  alias Network.Impl, as: Impl

  def handle_cast({:add_node, address}, state) do
    Impl.add_node(address, state)
  end
end
