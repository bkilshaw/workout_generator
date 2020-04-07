defmodule WorkoutGenerator.Interact do

  alias WorkoutGenerator.Generator

  def start() do
    IO.gets("\nEnter a name:")
    |> String.trim()
    |> Generator.create()

    start()
  end
end
