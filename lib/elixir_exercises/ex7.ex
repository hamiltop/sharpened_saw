defmodule Ex7 do
  @moduledoc """
    Learning GenEvent, Streams, and Enum. Documentation on each of those will be helpful.
  """

  @doc """
    This is a logarithmic counter. You are provided with 4 GenEvent pids, each representing an order of magnitude.
    * The `ones` pids will receive events.
    * For every 10 events the `ones` pid receives, the `tens` should be notified.
    * For every 10 events the `tens` pid receives, the `hundreds` should be notified.
    * For every 10 events the `hundreds` pid receives, the `thousands` should be notified.
  """
  def log_counter(ones, tens, hundreds, thousands) do
    # Add code here
  end

  defmodule StatsCounter do
    @moduledoc """
      This module is a GenEvent Handler. It should record various stats. The types of available stats are:
      * Gauge - Will always take the most recent value reported.
      * Counter - Will report the sum of all metrics reported.
      * Timer - Will report the mean of all metrics reported.
    """  

    defmodule Gauge do
      defstruct name: nil, value: nil
    end
    defmodule Counter do
      defstruct name: nil, value: nil
    end
    defmodule Timer do
      defstruct name: nil, value: nil
    end

    use GenEvent

    # Client

    @doc """
      Adds the Handler to the GenServer
    """
    def start(pid) do
      GenEvent.add_handler(pid, __MODULE__, %{}) # you may want to change the initial state
    end

    @doc """
      Get the stats for the given metric  
    """
    def get_stats(pid, metric_name) do
      # Add Code Here
    end

    # Server

    def handle_event(event, metrics) do
      # Add Code Here
      {:ok, metrics}
    end

    def handle_call(message, state) do
      # Add Code Here
      {:ok, nil, state}
    end
  end
end
