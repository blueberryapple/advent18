defmodule Day1Test do
    use ExUnit.Case
    doctest Advent.Day1

    test "reads file properly" do
      assert Advent.Day1.readInput("inputs/day1-test") == [+1, -2, +1]
    end

    test "sums list correctly" do
      assert Advent.Day1.part1([+1, -1]) == 0
    end

    test "find recurring sum correctly" do
      assert Advent.Day1.part2([1, -1]) == 0
    end

    test "find recurring sum correctly 2" do
      assert Advent.Day1.part2([+3, +3, +4, -2, -4]) == 10
    end

    test "find recurring sum correctly 3" do
      assert Advent.Day1.part2([-6, +3, +8, +5, -6]) == 5
    end

    test "find recurring sum correctly 4" do
      assert Advent.Day1.part2([+7, +7, -2, -7, -4]) == 14
    end
  end