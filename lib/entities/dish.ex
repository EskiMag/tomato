defmodule Tomato.Dish do
  defstruct [:name, :price]

  def from(%{
        "dish" => %{
          "name" => name,
          "price" => price
        }
      }) do
    %__MODULE__{
      name: name,
      price: price
    }
  end
end
