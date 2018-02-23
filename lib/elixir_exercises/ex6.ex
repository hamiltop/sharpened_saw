defmodule Ex6 do
  @moduledoc """
    Learning GenServer and Agents. Here you will build a FIFO queue.
    For the first module, GenServerQueue, you should use a GenServer
    For the second module, AgentQueue, you should use an Agent
  """

  defmodule GenServerQueue do
    @moduledoc """
      Here you will build the GenServer callbacks as well as the calling code to make the queue operational
      See GenServer documentation - http://elixir-lang.org/docs/stable/elixir/GenServer.html
    """
    use GenServer

    # Client

    def start_link(default) do
      GenServer.start_link(__MODULE__, default)
    end

    @doc """
      Returns :ok if successful
    """
    def queue(pid, item) do
      # Add code here
    end

    @doc """
      Returns {:ok. item} where item is the first item in the queue. Returns :error if the queue is empty. The item should be
      removed from the queue.
    """
    def dequeue(pid) do
      # Add code here
    end

    @doc """
      Returns {:ok. item} where item is the first item in the queue. Returns :error if the queue is empty. The item should not
      be removed from the queue.
    """
    def peek(pid) do
      # Add code here
    end

    # Server (callbacks)

    # Add handle_cast and handle_call here to support queue, dequeue and peek see GenServer documentation
  end

  defmodule AgentQueue do
    @moduledoc """
      Here we will use Agents to build the queue.
      See Agent documentation - http://elixir-lang.org/docs/stable/elixir/Agent.html
    """
    def start_link(default) do
      Agent.start_link fn () ->
        default
      end
    end

    @doc """
      Returns :ok if successful
    """
    def queue(pid, item) do
      # Add code here
    end

    @doc """
      Returns {:ok. item} where item is the first item in the queue. Returns :error if the queue is empty. The item should be
      removed from the queue.
    """
    def dequeue(pid) do
      # Add code here
    end

    @doc """
      Returns {:ok. item} where item is the first item in the queue. Returns :error if the queue is empty. The item should not
      be removed from the queue.
    """
    def peek(pid) do
      # Add code here
    end
  end
end
