defmodule NetworkNode.Impl do
  def pick_hop(routing_table, nonche) do
    routing_table |>
      Enum.find(
        fn {value, _next_hop} ->
          value > nonche
        end
      ) |>
      elem(1)
  end

  def next_hop(dest_address, routing_table) do
    Map.get(routing_table, dest_address) |>
      pick_hop(:rand.uniform)
  end

  def route_data(_data = %{dest_address: dest_address}, state = %{routing_table: routing_table}) do
    _next_address = next_hop(dest_address, routing_table)
    #Network.send_to(data, next_address)
    state
  end

  def construct_routing_table(_graph) do
    nil
  end
end
