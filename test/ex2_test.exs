defmodule Ex2Test do
  use ExUnit.Case

  test "map" do
    fun = fn(x) -> x*4 end
    assert Ex2.map([12,3,5], fun) == [48, 12, 20]
  end

  test "big map" do
    fun = fn(x) -> x*x end
    list = (0..100000) |> Enum.to_list
    result = list |> Enum.map fun
    assert Ex2.map(list, fun) == result
  end

  test "reduce" do
    fun = fn(x, acc) -> acc + x end
    list = (0..100) |> Enum.to_list
    result = list |> Enum.reduce 1, fun
    assert Ex2.reduce(list, 1, fun) == result
  end

  test "filter" do
    fun = fn(x) -> rem(x,2) == 0 end
    list = (0..100) |> Enum.to_list
    result = list |> Enum.filter fun
    assert Ex2.filter(list, fun) == result
  end

  test "any?" do
    fun = fn(x) -> rem(x,2) == 0 end
    assert Ex2.any?([1,2], fun) == true
    assert Ex2.any?([1,3], fun) == false
  end
  test "all?" do
    fun = fn(x) -> rem(x,2) == 0 end
    assert Ex2.all?([4,2], fun) == true
    assert Ex2.all?([1,2], fun) == false
  end

  test "sort" do
    assert Ex2.sort([0,1,1,6,4,9,6,3]) == [0,1,1,3,4,6,6,9]
  end
end
