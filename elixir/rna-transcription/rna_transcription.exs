defmodule RNATranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RNATranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    transform_list(dna, &transcription(&1))
  end

  defp transform_list([], _) do
    []
  end

  defp transform_list([h|t], fun) do
    [fun.(h)|transform_list(t,fun)]
  end

  defp transcription(nucleotide) do
   case nucleotide do
     ?G -> ?C
     ?C -> ?G
     ?T -> ?A
     ?A -> ?U
   end
 end
end
