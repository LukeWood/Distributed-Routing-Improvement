defmodule NetworkNode.DynamicSupervisor do
  use DynamicSupervisor

  def init(_) do
    DynamicSupervisor.init(strategy: :one_for_one)
  end

  def start(_args, _opts) do
    DynamicSupervisor.start_link(__MODULE__, nil, name: __MODULE__)
  end

  def new(address) do
    DynamicSupervisor.start_child(__MODULE__, {NetworkNode, address: address})
  end
end
