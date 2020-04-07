defmodule WorkoutGeneratorTest do
  use ExUnit.Case
  doctest WorkoutGenerator

  test "greets the world" do
    assert WorkoutGenerator.hello() == :world
  end
end
