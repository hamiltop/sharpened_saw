defmodule Ex2 do
  @moduledoc """
    In this exercise we will learn some how to build and use basic functional constructs
    such as map and reduce.
  """

  @doc """
    Apply the given function to each element of the list and return the resulting list
  """
  def map(list, fun) do
    # Add code here
  end

  @doc """
    Apply the given function to element of the list along with an accumulator value. Return
    accumulator after all elements have been processed. The function requires arguments in the
    form (element, accumulator)
  """
  def reduce(list, accumulator, fun) do
    # Add code here
  end

  @doc """
    Return all elements in list for which the given function returns true
  """
  def filter(list, fun) do
    # Add code here
  end

  @doc """
    Returns true if at least one element causes the supplied function to return true
  """
  def any?(list, fun) do
    # Add code here
  end

  @doc """
    Returns true if all elements cause the supplied function to return true
  """
  def all?(list, fun) do
    # Add code here
  end

  @doc """
    Sorts the given array using the quicksort algorithm. The quicksort algorithm is a recursive
    algorithm where a pivot element is chosen and all remaining elements are partition based on
    whether they are greater than or less than the pivot element. Each partition is then sorted.

    The solutions should leverage list comprehensions.
  """
  def sort(list) do
    # Add code here
  end
end
