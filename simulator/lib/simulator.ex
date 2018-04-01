defmodule Simulator do
  def init() do
    Range.new(0, 1000) |>
      Enum.map(fn address -> Network.add_node(address) end)

    network = RGG.unit_square(1000, 64)
    Enum.map(Enum.with_index(network),
      fn {node, index} ->
        Enum.map(node, fn neighbor ->
          NetworkNode.add_neighbor(Network.get_node(index), neighbor)
        end)
      end
    )
    :ok
  end
end
