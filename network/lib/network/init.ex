defmodule Network.Init do
  def start(_args, _opts) do
    GenServer.start_link(Network.Server, %Network{}, name: Network)
  end
end
