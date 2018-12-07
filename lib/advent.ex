defmodule Advent do
  def readInput(filename) do
    {:ok, inputString} = File.read(filename)
    inputString
  end
end
