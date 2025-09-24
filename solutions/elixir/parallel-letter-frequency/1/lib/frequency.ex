defmodule Frequency do
  @doc """
  Count letter frequency in parallel.

  Returns a map of characters to frequencies.

  The number of worker processes to use can be set with 'workers'.
  """
  @spec frequency([String.t()], pos_integer) :: map
  def frequency(texts, workers) do
    texts
    |> Enum.chunk_every(workers)
    |> Enum.map(
      fn chunk ->
        Task.async(
          fn -> 
            chunk
            |> Enum.flat_map(&String.graphemes/1)
            |> Enum.filter(&(&1 =~ ~r/\p{L}/u))
            |> Enum.frequencies_by(&String.downcase/1)
          end
        )
      end
    )
    |> Enum.map(&Task.await/1)
    |> Enum.reduce(%{}, fn map, acc -> Map.merge(map, acc, fn _key, val1, val2 -> val1 + val2 end)  end)
  end
end
