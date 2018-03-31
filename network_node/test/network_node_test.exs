defmodule NetworkNodeTest do
  use ExUnit.Case
  alias NetworkNode.Impl, as: Impl

  test "Pick hop selects the proper value" do
    routing_table = [
      {0, :not_this_one},
      {1, :this_one_should_be_selected}
    ]
    assert Impl.pick_hop(routing_table, 0.5) == :this_one_should_be_selected
  end

  test "DynamicSupervisor can start a child" do
    NetworkNode.new("Hello_Node")
  end

end
