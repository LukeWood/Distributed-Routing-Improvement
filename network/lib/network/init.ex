defmodule Network.Init do
  def start_link(_) do
    GenServer.start_link(Network.Server, %Network{})
  end
end
