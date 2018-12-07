defmodule Day1Test do
    use ExUnit.Case
    doctest Advent.Day1

    test "reads file properly" do
      assert Advent.Day1.readInput("inputs/day1-test") == ["+1", "-2", "+1"]
    end

    test "sums list correctly" do
      assert Advent.Day1.part1(["+1", "-1"]) == 0
    end
  end