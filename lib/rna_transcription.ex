defmodule RnaTranscription do
  @doc """
  Transcribes a character list representing DNA nucleotides to RNA

  ## Examples

  iex> RnaTranscription.to_rna('ACTG')
  'UGAC'
  """
  @spec to_rna([char]) :: [char]
  def to_rna(dna) do
    map = %{
      'G' => 'C',
      'C' => 'G',
      'T' => 'A',
      'A' => 'U'
    }
    convert = fn x -> Map.get(map, [x]) end
    map_conversion = Enum.map(dna, convert)
    concat_conversion = Enum.concat(map_conversion)
  end
end
