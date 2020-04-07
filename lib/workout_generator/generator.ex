defmodule WorkoutGenerator.Generator do


  @exercises %{
    "A" => "30 Squats",
    "B" => "15 Push ups",
    "C" => "1 Minute plank",
    "D" => "15 Tricep dips",
    "E" => "15 Sumo squats",
    "F" => "50 Jumping jacks",
    "G" => "40  High knees",
    "H" => "15 Sit ups",
    "I" => "15 Burpees",
    "J" => "2 Minute squat with front punches (stay low)",
    "K" => "35 Reverse lunges",
    "L" => "40 Russian twists",
    "M" => "20 Tricep dips",
    "N" => "25 Push ups",
    "O" => "1 Minute wall sit",
    "P" => "2 Minute plank",
    "Q" => "20 Sit ups",
    "R" => "40 Crunches",
    "S" => "15 Burpees",
    "T" => "40 Jumping Jacks",
    "U" => "1 Minute side plank each side (Total 2 minutes)",
    "V" => "25 Sumo Squats",
    "W" => "30 Mountain climbers",
    "X" => "1 Minute plank",
    "Y" => "20 Leg raises",
    "Z" => "30 Forward lunges"
  }

  def create(name) do
    name_letters = name 
                    |> String.upcase()
                    |> String.split("", trim: true)

    
    Enum.map(name_letters, fn letter ->
      "#{letter} : #{@exercises[letter]}"
    end)
  end
end
