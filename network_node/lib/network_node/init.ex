defmodule NetworkNode.Init do
  def start_link(%{ip_address: ip_address}) do
    GenServer.start_link(__MODULE__, %NetworkNode{ip_address: ip_address})
  end
end
