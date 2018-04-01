defmodule NetworkNode.Server do
  alias NetworkNode.Impl, as: Impl
  
  def handle_cast({:send_data, data}, state) do
    Impl.send_data(data, state)
    state
  end

end
