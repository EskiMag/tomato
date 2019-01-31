defmodule Tomato.Dailymenu do
  defstruct [:name, :start_date, :end_date, :dishes]

  def from(%{
        "name" => name,
        "start_date" => start_date,
        "end_date" => end_date,
        "dishes" => dishes
      }) do
    %__MODULE__{
      name: name,
      start_date: start_date,
      end_date: end_date,
      dishes: Enum.map(dishes, &Tomato.Dish.from/1)
    }
  end
end
