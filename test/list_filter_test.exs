defmodule ListFilterTest do
  use ExUnit.Case

  describe "call/1" do
    test "should return the correct quantity of integers on a string list" do
      list = ["1", "3", "6", "43", "banana", "6", "abc"]
      result = ListFilter.call(list)

      assert result == 3
    end
  end
end
