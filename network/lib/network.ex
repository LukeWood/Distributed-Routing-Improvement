defmodule Network do
  defdelegate start_link(params), to: Network.Init
  defdelegate send_to(data, address), to: Network.Client

  defstruct [
    
  ]
end
