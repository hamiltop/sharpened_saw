defmodule Ex4Test do
  use ExUnit.Case
  require Ex4

  def infinite do
    infinite
  end

  test "short_circuit" do
    assert Ex4.short_circuit(true, infinite) == true
  end

  test "media_math" do
    assert Ex4.media_math(4 + 5 + 8) == 160
    assert Ex4.media_math(4 + 5 * (2 + 4)) == 160
    assert Ex4.media_math(4 * (8 - 3) + (2 + 4)) == 160
  end

  test "company to_string" do
    a = %Ex4.Company{employees: ["Peter", "Daniel", "Sonia"], name: "BrightRoll", sector: "Ad-tech"}
    assert to_string(a) == "BrightRoll (composed of Peter, Daniel, Sonia) is a Ad-tech company"
  end

  test "company to_list" do
    a = %Ex4.Company{employees: ["Peter", "Daniel", "Sonia"], name: "BrightRoll", sector: "Ad-tech"}
    assert Enum.to_list(a) == ["Peter", "Daniel", "Sonia"]
  end

  test "company sort" do
    a = %Ex4.Company{employees: ["Peter", "Daniel", "Sonia"], name: "BrightRoll", sector: "Ad-tech"}
    assert Enum.sort(a) == ["Daniel", "Peter", "Sonia"]
  end

  test "company reverse" do
    a = %Ex4.Company{employees: ["Peter", "Daniel", "Sonia"], name: "BrightRoll", sector: "Ad-tech"}
    assert Enum.reverse(a) == ["Sonia", "Daniel", "Peter"]
  end

  test "company member" do
    a = %Ex4.Company{employees: ["Peter", "Daniel", "Sonia"], name: "BrightRoll", sector: "Ad-tech"}
    assert Enum.member?(a, "Daniel") == true
    assert Enum.member?(a, "SooHwan") == false
  end

  test "company count" do
    a = %Ex4.Company{employees: ["Peter", "Daniel", "Sonia"], name: "BrightRoll", sector: "Ad-tech"}
    assert Enum.count(a) == 3
  end
end
