defmodule ComplexNumbers do
  @typedoc """
  In this module, complex numbers are represented as a tuple-pair containing the real and
  imaginary parts.
  For example, the real number `1` is `{1, 0}`, the imaginary number `i` is `{0, 1}` and
  the complex number `4+3i` is `{4, 3}'.
  """
  @type complex :: {number, number}

  defp make_complex(num) when is_number(num) do
    {num, 0}
  end

  defp make_complex(num) do
    num
  end

  @doc """
  Return the real part of a complex number
  """
  @spec real(a :: complex) :: number
  def real({re, _im}) do
    re
  end

  @doc """
  Return the imaginary part of a complex number
  """
  @spec imaginary(a :: complex) :: number
  def imaginary({_re, im}) do
    im
  end

  @doc """
  Multiply two complex numbers, or a real and a complex number
  """
  @spec mul(a :: complex | number, b :: complex | number) :: complex
  def mul(a, b) do
    {a_re, a_im} = make_complex(a)
    {b_re, b_im} = make_complex(b)

    {a_re * b_re - a_im * b_im, a_re * b_im + a_im * b_re}
  end

  @doc """
  Add two complex numbers, or a real and a complex number
  """
  @spec add(a :: complex | number, b :: complex | number) :: complex
  def add(a, b) do
    {a_re, a_im} = make_complex(a)
    {b_re, b_im} = make_complex(b)

    {a_re + b_re, a_im + b_im}
  end

  @doc """
  Subtract two complex numbers, or a real and a complex number
  """
  @spec sub(a :: complex | number, b :: complex | number) :: complex
  def sub(a, b) do
    {a_re, a_im} = make_complex(a)
    {b_re, b_im} = make_complex(b)

    {a_re - b_re, a_im - b_im}
  end

  @doc """
  Divide two complex numbers, or a real and a complex number
  """
  @spec div(a :: complex | number, b :: complex | number) :: complex
  def div(a, b) do
    {mul_re, mul_im} = mul(a, conjugate(b))
    abs_val = ComplexNumbers.abs(b)
    abs_sqr = abs_val ** 2

    {mul_re / abs_sqr, mul_im / abs_sqr}
  end

  @doc """
  Absolute value of a complex number
  """
  @spec abs(a :: complex) :: number
  def abs(a) do
    {a_re, a_im} = make_complex(a)

    :math.sqrt(a_re ** 2 + a_im ** 2)
  end

  @doc """
  Conjugate of a complex number
  """
  @spec conjugate(a :: complex) :: complex
  def conjugate(a) do
    {a_re, a_im} = make_complex(a)

    {a_re, -a_im}
  end

  @doc """
  Exponential of a complex number
  """
  @spec exp(a :: complex) :: complex
  def exp(a) do
    {a_re, a_im} = make_complex(a)

    magnitude = :math.exp(a_re)

    {magnitude * :math.cos(a_im), magnitude * :math.sin(a_im)}
  end
end
