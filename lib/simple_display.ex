defmodule SimpleDisplay do
  @moduledoc """
  A behaviour specifying a simple display module to give the community a single
  target for a lot of simpler display in Elixir and Nerves.
  """

  @callback info(pid()) ::
              {:ok,
               %{
                 resolution: {integer(), integer()}
               }}
  @callback set_pixels(pid(), [byte()]) :: :ok | {:error, Atom.t(), String.t()}
  @callback render_to_display(pid()) :: :ok | {:error, Atom.t(), String.t()}
end
