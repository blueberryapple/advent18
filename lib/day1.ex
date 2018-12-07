defmodule Advent.Day1 do
  def read_input(filename) do
    input_string = Advent.read_input(filename)
    input = String.split(input_string, "\n", trim: true)

    Enum.map(input, &String.to_integer/1)
  end

  def part1(input) do
    Enum.sum(input)
  end

  def solve_part1() do
    input = read_input("inputs/day1")
    part1(input)
  end

  def loop(arr, i, len, sum, found) do
    j = rem(i+1, len)
    {:ok, freq} = Enum.fetch(arr, j)
    new_freq = freq + sum

    cond do
      new_freq in found -> new_freq
      true -> loop(arr, j, len, new_freq, MapSet.put(found, new_freq))
    end
  end

  def part2(input) do
    len = length(input)
    loop(input, -1, len, 0, MapSet.new([0]))
  end

  def solve_part2() do
    input = read_input("inputs/day1")
    part2(input)
  end
end