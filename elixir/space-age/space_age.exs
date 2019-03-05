defmodule SpaceAge do
  @type planet ::
          :mercury
          | :venus
          | :earth
          | :mars
          | :jupiter
          | :saturn
          | :uranus
          | :neptune


  @orbit %{ # Map with the orbital periods of the planets
    :earth => 1,
    :mercury => 0.2408467,
    :venus => 0.61519726,
    :mars => 1.8808158,
    :jupiter => 11.862615,
    :saturn =>  29.447498,
    :uranus => 84.016846,
    :neptune => 164.79132
  }

  @earth_seconds  31557600 # Amount of seconds in a year on earth

  @doc """
  Return the number of years a person that has lived for 'seconds' seconds is
  aged on 'planet'.
  """
  @spec age_on(planet, pos_integer) :: float
  def age_on(planet, seconds) do
    seconds / @earth_seconds / @orbit[planet]
  end
end