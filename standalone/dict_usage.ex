defmodule DictSum do
  def sum(dict) do
    dict |> Dict.values |> Enum.sum
  end
end
