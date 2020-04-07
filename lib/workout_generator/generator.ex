defmodule WorkoutGenerator.Generator do

  def create(name) do
    name_letters = String.split(name, "", trim: true)

    Enum.each(name_letters, fn letter ->
      letter
      |> String.downcase()
      |> lookup()
      |> output(letter)
    end)
  end

  def output(nil, _letter) do
    IO.puts(" ")
  end

  def output(workout, letter) do
    IO.puts("#{String.upcase(letter)} : #{workout}")
  end

  def lookup(" ") do
    nil
  end

  def lookup(letter) do
    {_, workout} = Enum.find(alphabet(), fn {k,_v} -> k == String.to_atom(letter) end)
    workout
  end


  def alphabet() do
    [
      {:a, "30 Squats"},
      {:b, "15 Push ups"},
      {:c, "1 Minute plank"},
      {:d, "15 Tricep dips"},
      {:e, "15 Sumo squats"},
      {:f, "50 Jumping jacks"},
      {:g, "40  High knees"},
      {:h, "15 Sit ups"},
      {:i, "15 Burpees"},
      {:j, "2 Minute squat with front punches (stay low)"},
      {:k, "35 Reverse lunges"},
      {:l, "40 Russian twists"},
      {:m, "20 Tricep dips"},
      {:n, "25 Push ups"},
      {:o, "1 Minute wall sit"},
      {:p, "2 Minute plank"},
      {:q, "20 Sit ups"},
      {:r, "40 Crunches"},
      {:s, "15 Burpees"},
      {:t, "40 Jumping Jacks"},
      {:u, "1 Minute side plank each side (Total 2 minutes)"},
      {:v, "25 Sumo Squats"},
      {:w, "30 Mountain climbers"},
      {:x, "1 Minute plank"},
      {:y, "20 Leg raises"},
      {:z, "30 Forward lunges"},

    ]
  end
end
