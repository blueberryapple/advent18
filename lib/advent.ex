defmodule Advent do
  def read_input(filename) do
    {:ok, input_string} = File.read(filename)
    input_string
  end
end
