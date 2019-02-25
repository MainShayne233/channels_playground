defmodule ChannelsPlayground.Store do

  use GenServer

  def start_link(name, initial_state) do
    GenServer.start_link(__MODULE__, initial_state, [name: name])
  end

  def init(initial_state) do
    {:ok, initial_state}
  end

  def get(name, key) do
    GenServer.call(name, {:get, key})
  end

  def put(name, key, value) do
    GenServer.cast(name, {:put, {key, value}})
  end

  def handle_call({:get, key}, _from, state) do
    {:reply, Map.get(state, key), state}
  end

  def handle_cast({:put, {key, value}}, state) do
    {:noreply, Map.put(state, key, value)}
  end
end
