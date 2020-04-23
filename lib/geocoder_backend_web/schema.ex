defmodule GeocoderBackendWeb.Schema do
  use Absinthe.Schema
  alias GeocoderBackendWeb.Resolvers
  import_types GeocoderBackendWeb.Schema.ContentTypes

  query do
    @desc "Get locations matching address"
    field :locations, list_of(:location) do
      arg :address, type: non_null(:string)
      resolve(&Resolvers.LocationResolver.match/3)
    end
  end
end