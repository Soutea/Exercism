defmodule Raindrops do
  @doc """
  Returns a string based on raindrop factors.

  - If the number contains 3 as a prime factor, output 'Pling'.
  - If the number contains 5 as a prime factor, output 'Plang'.
  - If the number contains 7 as a prime factor, output 'Plong'.
  - If the number does not contain 3, 5, or 7 as a prime factor,
    just pass the number's digits straight through.
  """
  @spec convert(pos_integer) :: String.t()
  def convert(number) do
    cond do
      pling?(number) and plang?(number) and plong?(number) -> "PlingPlangPlong"
      pling?(number) and plang?(number) -> "PlingPlang"
      pling?(number) and plong?(number) -> "PlingPlong"
      plang?(number) and plong?(number) -> "PlangPlong"
      pling?(number) -> "Pling"
      plang?(number) -> "Plang"
      plong?(number) -> "Plong"
      true -> Integer.to_string(number)
    end
  end

  defp pling?(number) do
    rem(number,3) == 0
  end

  defp plang?(number) do
    rem(number,5) == 0
  end

  defp plong?(number) do
    rem(number,7) == 0
  end
end
