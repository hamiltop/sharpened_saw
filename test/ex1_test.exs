defmodule Ex1Test do
  use ExUnit.Case

  test "pattern_matching" do
    assert Ex1.pattern_matching(:basil) == 100
    assert Ex1.pattern_matching(:oregano) == 19
    assert Ex1.pattern_matching(:thyme) == {4, 5}
    assert Ex1.pattern_matching(:sage) == :sage
    assert Ex1.pattern_matching(:rosemary) == :error
  end

  test "first_class_functions" do
    fun1 = fn (x) -> x*10 end
    fun2 = fn (y) -> y + 2 end
    assert Ex1.first_class_functions(fun1, fun2).(5) == 52
  end

  test "factorial" do
    assert Ex1.factorial(5) == 120
    assert Ex1.factorial(6) == 720
  end

  test "fibonnaci" do
    assert Ex1.fibonacci(4) == 5
    assert Ex1.fibonacci(9) == 55
  end
  test "large fibonnaci" do
    assert Ex1.fibonacci(50) == 20365011074
  end
end
