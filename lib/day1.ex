defmodule Advent.Day1 do
  def readInput(filename) do
    inputString = Advent.readInput(filename)
    input = String.split(inputString, "\n", trim: true)

    Enum.map(input, &String.to_integer/1)
  end

  def part1(input) do
    Enum.sum(input)
  end

  def solvePart1() do
    input = readInput("inputs/day1")
    part1(input)
  end

  def loop(arr, i, len, sum, found) do
    j = rem(i+1, len)
    {:ok, freq} = Enum.fetch(arr, j)
    newFreq = freq + sum

    cond do
      newFreq in found -> newFreq
      true -> loop(arr, j, len, newFreq, MapSet.put(found, newFreq))
    end
  end

  def part2(input) do
    len = length(input)
    loop(input, -1, len, 0, MapSet.new([0]))
  end

  def solvePart2() do
    input = readInput("inputs/day1")
    part2(input)
  end
end