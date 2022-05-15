defmodule Hello3.GalleryFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Hello3.Gallery` context.
  """

  @doc """
  Generate a photo.
  """
  def photo_fixture(attrs \\ %{}) do
    {:ok, photo} =
      attrs
      |> Enum.into(%{
        picture: "some picture"
      })
      |> Hello3.Gallery.create_photo()

    photo
  end
end
