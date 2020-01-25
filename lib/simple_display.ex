defmodule SimpleDisplay do
  @moduledoc """
  A behaviour specifying a simple display module to give the community a single
  target for a lot of simpler display in Elixir and Nerves.
  """

  @callback info :: %{
              resolution: {integer(), integer()},
              depth_bits: integer()
            }
  @callback set_pixels([]) :: :ok | {:error, Atom.t(), String.t()}
  @callback render_to_display :: :ok | {:error, Atom.t(), String.t()}
end
