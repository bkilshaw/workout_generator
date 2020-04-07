defmodule WorkoutGenerator do
  defdelegate start(), to: WorkoutGenerator.Interact
end
