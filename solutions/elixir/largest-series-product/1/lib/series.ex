defmodule Series do
  @doc """
  Finds the largest product of a given number of consecutive numbers in a given string of numbers.
  """
  @spec largest_product(String.t(), non_neg_integer) :: non_neg_integer

  def largest_product(number_string, size) do
    if String.length(number_string) < size or size < 0 do
      raise(ArgumentError)
    end

    slices = for x <- 0..(String.length(number_string) - size), do: String.slice(number_string, x, size)

    slices
    |> Enum.map(
      fn str ->
        str
        |> String.graphemes
        |> Enum.reduce(1, fn str, acc -> String.to_integer(str) * acc end)
      end
    )
    |> Enum.max
  end
end
