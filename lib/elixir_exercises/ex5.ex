defmodule Ex5 do
  @doc """
    Calls Support.async_spice with the passed in spice and processes the response
    Support.async_spice will send a message to the calling PID. The message can be
    a variety of responses, but this function should process the response as follows:

    * If the response is an integer, return the square of the integer
    * If the response is a tuple in the form {:ok, value} return the value
    * If the response is a tuple in another form, return the tuple
    * If the response matches the spice, return the spice
    * If the response is anything else, return :error
  """
  def pattern_matching(spice) do
    Support.async_spice(spice)
    receive do
      # Add Code Here
      _ -> nil
    end
  end

  @doc """
    Spawn a new process that meets the following criteria:

    1. Executes fun
    2. Waits for message {:get, pid}
    3. Sends message {:response, result_of_fun}
  """
  def async_launch(fun) do
    # Add code here
  end

  @doc """
    Build a parallel map implementation. For each element in list, apply fun. All elements should
    be processed in parallel.
  """
  def pmap(list, fun) do
    # Add Code Here
  end

  @doc """
    Spawn a process that continually responds to messages. There are three messages it should
    respond to:

    1. {:set, value} - set the counter to value
    2. {:increment, amount} - increment the counter by amount
    3. {:decrement, amount} - decrement the counter by amount
    4. {:get, pid} - send message {:counter, value} to pid

    The counter should be initialized to initial_value
    This function should return the pid of the process that will respond to these messages
  """
  def remote_counter(initial_value) do
    # Add Code Here 
  end
end
