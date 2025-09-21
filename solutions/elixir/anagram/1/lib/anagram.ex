defmodule Anagram do
  @doc """
  Returns all candidates that are anagrams of, but not equal to, 'base'.
  """
  @spec match(String.t(), [String.t()]) :: [String.t()]
  def match(base, candidates) do
    downcase_base = String.downcase(base)
    base_dict = convert_to_dict(downcase_base)

    candidates = candidates
      |> Enum.filter(&(String.downcase(&1) !== downcase_base))
      |> Enum.filter(&(base_dict === convert_to_dict(&1 |> String.downcase)))

  end

  defp convert_to_dict(str) do
    str
    |> String.graphemes
    |> Enum.reduce(
      %{},
      fn key, map -> Map.update(map, key, 1, &(&1 + 1)) end
    )
  end
end
