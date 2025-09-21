defmodule AllYourBase do
  @doc """
  Given a number in input base, represented as a sequence of digits, converts it to output base,
  or returns an error tuple if either of the bases are less than 2
  """

  @spec convert(list, integer, integer) :: {:ok, list} | {:error, String.t()}
  def convert(_digits, input_base, _output_base) when input_base < 2 do
    {:error, "input base must be >= 2"}
  end

  def convert(_digits, _input_base, output_base) when output_base < 2 do
    {:error, "output base must be >= 2"}
  end

  def convert(digits, input_base, output_base) do
    case calc_number(digits, input_base) do
      {:ok, number} -> {:ok, convert_base(number, output_base)}
      err -> err
    end
  end

  defp calc_number_help([], _, _) do
    {:ok, 0}
  end

  defp calc_number_help([digit | _], input_base, _) when digit < 0 or digit >= input_base do
    {:error, "all digits must be >= 0 and < input base"}
  end

  defp calc_number_help([digit | tail], input_base, pow) do
    case calc_number_help(tail, input_base, pow + 1) do
      {:ok, number} -> {:ok, number + digit * (input_base ** pow)}
      err -> err
    end
  end

  defp calc_number(digits, input_base) do
    digits
    |> Enum.reverse
    |> calc_number_help(input_base, 0)
  end

  defp convert_base(number, output_base) when number < output_base do
    [number]
  end

  defp convert_base(number, output_base) do
    mod = rem(number, output_base)

    convert_base(div(number, output_base), output_base) ++ [mod]
  end
end
