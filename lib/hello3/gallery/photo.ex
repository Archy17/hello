defmodule Hello3.Gallery.Photo do
  use Ecto.Schema
  use  Waffle.Ecto.Schema
  import Ecto.Changeset

  schema "photos" do
    field :picture, Hello3.FileImage.Type 

    timestamps()
  end

  @doc false
  def changeset(photo, attrs) do
    photo
    |> cast(attrs, [:picture])
    |> validate_required([:picture])
  end
end
