defmodule Words do
  @doc """
  Count the number of words in the sentence.

  Words are compared case-insensitively.
  """
  @spec count(String.t()) :: map
  def count(sentence) do
    cleaned_sentence = clean(sentence)
    count(String.split(cleaned_sentence), %{}) 
  end

  defp count([], result) do
    result
  end

  defp count([head|tail], result) do
    new_result = Map.update(result, head, 1, &(&1 + 1))
    count(tail, new_result)
  end

  defp clean(input) do
    input |> String.replace(~r/[^\p{L}\d-]/u, " ") |> String.trim |> String.downcase
  end
end
