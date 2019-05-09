defmodule Roman do
  @doc """
  Convert the number to a roman number.
  """

  @roman [
    {1000, "M"},
    {900, "CM"},
    {500, "D"},
    {400, "CD"},
    {100, "C"},
    {90, "XC"},
    {50, "L"},
    {40, "XL"},
    {10, "X"},
    {9, "IX"},
    {5, "V"},
    {4, "IV"},
    {1, "I"}
  ]


  @spec numerals(pos_integer) :: String.t()
  def numerals(number) do
    numerals(@roman, number, "")
  end

  defp numerals(_, 0, tail) do
     tail
  end

  defp numerals([{x,y}|_] = roman, number, tail) when number >= x do
      numerals(roman, number - x, tail <> y)
  end

  defp numerals([_|t], number, tail) do
      numerals(t, number, tail)
  end
end
