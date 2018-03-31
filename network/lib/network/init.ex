defmodule Network.Init do
  def start_link(args) do
    GenServer.start_link(Network.Server, nil)
  end
end
