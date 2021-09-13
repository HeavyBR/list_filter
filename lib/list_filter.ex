defmodule ListFilter do
  require Integer

  def call(list) do
    list
    |> Enum.flat_map(fn item ->
      case Integer.parse(item) do
        {int, _rest} -> [int]
        :error -> []
      end
    end)
    |> Enum.filter(&Integer.is_odd/1)
    |> length()

  end
end
