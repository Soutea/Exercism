defmodule PrimeFactors do
  @doc """
  Compute the prime factors for 'number'.

  The prime factors are prime numbers that when multiplied give the desired
  number.

  The prime factors of 'number' will be ordered lowest to highest.
  """
  @spec factors_for(pos_integer) :: [pos_integer]
  def factors_for(number) do
    foo(number, 2, [])
  end

  defp foo(number, factor, primes) when rem(number,factor) == 0 do
    [factor|foo(div(number,factor), factor, primes)]
  end

  defp foo(number, factor, primes) when factor > number do
    primes
  end

  defp foo(number, factor, primes) do
    foo(number, (factor + 1), primes)
  end
end
