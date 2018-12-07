defmodule Advent.Day1 do
  def readInput(filename) do
    inputString = Advent.readInput(filename)
    String.split(inputString, "\n", trim: true)
  end

  def part1(input) do
    nums = Enum.map(input, &String.to_integer/1)
    Enum.sum(nums)
  end

  def solvePart1() do
    input = readInput("inputs/day1")
    part1(input)
  end
end