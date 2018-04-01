defmodule NetworkNode.Impl do

  def send_data(data = %Packet{}, state = %{route_fn: route_fn, send_fn: send_fn}) do
    address = route_fn.(data)
    send_fn.(data, address)
    state
  end

end
