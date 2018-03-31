defmodule NetworkNode.Init do
  def start_link(address) do
    GenServer.start_link(__MODULE__, %NetworkNode{address: address})
  end

  def init(_) do
    :ok
  end
end
