defmodule GeocoderBackendWeb.Schema.ContentTypes do
  use Absinthe.Schema.Notation

  object :location do
    field :address, :string
    field :lat, :float
    field :lng, :float
  end
end