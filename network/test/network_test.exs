defmodule NetworkTest do
  use ExUnit.Case

  test "New nodes can be added to the network" do
    Network.add_node("127.0.0.1")
    assert Map.get(Network.nodes, "127.0.0.1") != nil
  end

end
