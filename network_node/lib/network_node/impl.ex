defmodule NetworkNode.Impl do
  def pick_hop(nonche, routing_table) do
    routing_table |>
      Enum.find(
        fn {value, _next_hop} ->
          value < nonche
        end
      ) |>
      elem(1)
  end

  def next_hop(dest_address, routing_table) do
    nonche = :random.uniform()
    Map.get(routing_table, ip_address) |>
      pick_route(nonche, destinations_table)
  end

  def route_data(data = %{dest_address: dest_address}, state = %{routing_table: routing_table}) do
    next_address = next_hop(dest_address, routing_table)
    Network.send_to(data, next_address)
    state
  end

  def construct_routing_table(graph) do
    nil
  end
end
