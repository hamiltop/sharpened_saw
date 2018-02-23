defmodule Ex5Test do
  use ExUnit.Case

  test "async pattern_matching" do
    assert Ex5.pattern_matching(:basil) == 100
    assert Ex5.pattern_matching(:oregano) == 19
    assert Ex5.pattern_matching(:thyme) == {4, 5}
    assert Ex5.pattern_matching(:sage) == :sage
    assert Ex5.pattern_matching(:rosemary) == :error
  end

  test "async launcher" do
    pid = Ex5.async_launch fn() ->
      1234
    end
    assert Support.async_get_response(pid) == 1234
  end

  test "parallel map" do
    initial = (1..100) |> Enum.to_list
    fun = fn(x) ->
      :timer.sleep(50)
      x*2
    end
    result = Ex5.pmap(initial, fun)
    expected_result = Enum.map(initial, fun)
    assert result == expected_result
  end

  def get_counter_value(pid) do
    send(pid, {:get, self})
    receive do
      {:counter, value} ->
        value
    end
  end

  test "remote_counter" do
    pid = Ex5.remote_counter(0)
    assert get_counter_value(pid) == 0
    send(pid, {:set, 10})
    assert get_counter_value(pid) == 10
    send(pid, {:increment, 1})
    assert get_counter_value(pid) == 11
    send(pid, {:decrement, 5})
    assert get_counter_value(pid) == 6
  end
end
