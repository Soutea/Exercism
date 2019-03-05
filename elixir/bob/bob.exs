defmodule Bob do
  def hey(input) do
    cond do
      asking?(input) and yelling?(input) -> "Calm down, I know what I'm doing!"
      asking?(input) -> "Sure."
      yelling?(input) -> "Whoa, chill out!"
      silence?(input) -> "Fine. Be that way!"
      true -> "Whatever."
    end
  end

    defp yelling?(input) do
      String.upcase(input) == input && String.downcase(input) != input
    end

    defp asking?(input) do
      String.ends_with?(input, "?")
    end

    defp silence?(input) do
      String.trim(input) == ""
    end
  end
