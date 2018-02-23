defmodule Ex7Test do
  use ExUnit.Case

  @duration 100

  def count_and_update(event, tag) do
    parent = self
    spawn_link fn ->
      send parent, {tag, Enum.count(GenEvent.stream(event, [duration: @duration]))}
    end
  end

  test "should work as logarithmic counter" do
    {:ok, ones} = GenEvent.start_link
    {:ok, tens} = GenEvent.start_link
    {:ok, hundreds} = GenEvent.start_link
    {:ok, thousands} = GenEvent.start_link
    count_and_update(ones, :ones)
    count_and_update(tens, :tens)
    count_and_update(hundreds, :hundreds)
    count_and_update(thousands, :thousands)
    Ex7.log_counter(ones, tens, hundreds, thousands)
    Stream.cycle([1])
      |> Stream.take(1000)
      |> Enum.map fn(x) ->
        GenEvent.sync_notify(ones, :ping)   
      end
    receive do
      {:ones, ones_count} -> assert ones_count == 1000
    after
      @duration -> assert false == true
    end
    receive do
      {:tens, tens_count} -> assert tens_count == 100
    after
      @duration -> assert false == true
    end
    receive do
      {:hundreds, hundreds_count} -> assert hundreds_count == 10
    after
      @duration -> assert false == true
    end
    receive do
      {:thousands, thousands_count} -> assert thousands_count == 1
    after
      @duration -> assert false == true
    end
  end

  test "StatsCounter should properly record stats" do
    {:ok, manager} = GenEvent.start_link
    Ex7.StatsCounter.start(manager)
    GenEvent.sync_notify(manager, %Ex7.StatsCounter.Gauge{name: 1, value: 14})
    GenEvent.sync_notify(manager, %Ex7.StatsCounter.Gauge{name: 1, value: 12})
    GenEvent.sync_notify(manager, %Ex7.StatsCounter.Counter{name: "hi", value: 12})
    GenEvent.sync_notify(manager, %Ex7.StatsCounter.Counter{name: "hi", value: 14})
    GenEvent.sync_notify(manager, %Ex7.StatsCounter.Timer{name: :hey, value: 12})
    GenEvent.sync_notify(manager, %Ex7.StatsCounter.Timer{name: :hey, value: 14})
    assert Ex7.StatsCounter.get_stats(manager, 1) == 12
    assert Ex7.StatsCounter.get_stats(manager, "hi") == 26
    assert Ex7.StatsCounter.get_stats(manager, :hey) == 13
  end
end
