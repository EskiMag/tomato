defmodule Tomato.Dish do
  defstruct [:name, :price]

  def from(%{
        "name" => name,
        "price" => price
      }) do
    %__MODULE__{
      name: name,
      price: price
    }
  end
end
