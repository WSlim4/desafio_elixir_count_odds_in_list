defmodule OddsInListTest do
  use ExUnit.Case
  doctest OddsInList

  describe("call/l") do
    test "count odds integers in list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      assert OddsInList.call(list) == 3
    end
  end
end
