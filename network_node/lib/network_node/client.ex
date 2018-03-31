defmodule NetworkNode.Client do
  def send_data(pid, data) do
    GenServer.cast(pid, {:send_data, data})
  end
end
