defmodule Ex1 do
  @moduledoc """
    In this exercise we will learn some of the fundamentals of Elixir, including
    pattern matching and recursion.
  """

  @doc """
    Calls Support.spice with the passed in spice and processes the response
    Support.spice returns a variety of responses, but this function behaves as follows:

    * If the response is an integer, return the square of the integer
    * If the response is a tuple in the form {:ok, value} return the value
    * If the response is a tuple in another form, return the tuple
    * If the response matches the spice, return the spice
    * If the response is anything else, return :error
  """
  def pattern_matching(spice) do
    case Support.spice(spice) do
      # Add Code Here
      _ -> nil
    end
  end
 
  @doc """
    Returns a function that takes 1 argument. It should apply fun1 to the argument and then apply
    fun2 to the argument.
  """
  def first_class_functions(fun1, fun2) do
    # Add Code Here
  end

  @doc """
    Return the factorial of n

    This should be Tail Call Optimized
  """
  def factorial(n) do
    # Add Code Here
  end

  @doc """
    Return the nth number in the fibonacci sequence.
    The fibonacci sequence is defined as:
    fibonacci(0) = 1
    fibonacci(1) = 1
    fibonacci(n) = fibonacci(n - 1) + fibonacci(n - 2)

    The solution should be Tail Call Optimized
  """
  def fibonacci(n) do
    # Add Code Here
  end
end
