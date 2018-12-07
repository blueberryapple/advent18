defmodule AdventTest do
  use ExUnit.Case
  doctest Advent

  test "reads file correctly" do
    assert Advent.readInput("inputs/day1-test") == "+1\n-2\n+1\n"
  end
end
