defmodule Ex6Test do
  use ExUnit.Case

  test "GenServer Queue" do
    {:ok, queue} = Ex6.GenServerQueue.start_link([])
    assert Ex6.GenServerQueue.queue(queue, 5) == :ok
    assert Ex6.GenServerQueue.dequeue(queue) == {:ok, 5}
    assert Ex6.GenServerQueue.queue(queue, 6) == :ok
    assert Ex6.GenServerQueue.queue(queue, 2) == :ok
    assert Ex6.GenServerQueue.peek(queue) == {:ok, 6}
    assert Ex6.GenServerQueue.dequeue(queue) == {:ok, 6}
    assert Ex6.GenServerQueue.dequeue(queue) == {:ok, 2}
    assert Ex6.GenServerQueue.peek(queue) == :error
  end

  test "Agent Queue" do
    {:ok, queue} = Ex6.AgentQueue.start_link([])
    assert Ex6.AgentQueue.queue(queue, 5) == :ok
    assert Ex6.AgentQueue.dequeue(queue) == {:ok, 5}
    assert Ex6.AgentQueue.queue(queue, 6) == :ok
    assert Ex6.AgentQueue.queue(queue, 2) == :ok
    assert Ex6.AgentQueue.peek(queue) == {:ok, 6}
    assert Ex6.AgentQueue.dequeue(queue) == {:ok, 6}
    assert Ex6.AgentQueue.dequeue(queue) == {:ok, 2}
    assert Ex6.AgentQueue.peek(queue) == :error
  end
end
