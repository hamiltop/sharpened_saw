defmodule Ex3Test do
  use ExUnit.Case

  test "fizzbuzz" do
    # Don't cheat by looking at this
    range = (1..100)
    pattern = [nil, nil, "Fizz", nil, "Buzz", "Fizz", nil, nil, "Fizz", "Buzz", nil, "Fizz", nil, nil, "FizzBuzz"]
    result = Enum.zip( range, Stream.cycle(pattern) ) |> Enum.map fn({x,y}) -> y || x end
    assert result == Ex3.fizzbuzz 
  end

  test "scrambled_eggs" do
    initial_list = [3,4,1,2,3,6,7,8,4,3,12,16,18]
    expected_result = [9,4,1,9,49,8,4,9,12,16]
    assert Ex3.scrambled_eggs(initial_list) == expected_result
  end
end
