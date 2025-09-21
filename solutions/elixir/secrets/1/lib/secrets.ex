defmodule Secrets do
  def secret_add(secret) do
    &(&1 + secret)
  end

  def secret_subtract(secret) do
    fn val ->
      val - secret
    end
  end

  def secret_multiply(secret) do
    &(&1 * secret)
  end

  def secret_divide(secret) do
    fn val ->
      val / secret
      |> trunc
    end
  end

  def secret_and(secret) do
    &(&1 |> Bitwise.band(secret))
  end

  def secret_xor(secret) do
    &(&1 |> Bitwise.bxor(secret))
  end

  def secret_combine(secret_function1, secret_function2) do
    fn val ->
      secret_function2.(secret_function1.(val))
    end
  end
end
