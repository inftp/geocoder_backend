defmodule GeocoderBackendWeb.Schema do
  use Absinthe.Schema
  alias GeocoderBackendWeb.Resolvers
  import_types GeocoderBackendWeb.Schema.ContentTypes

  query do
    @desc "Get locations matching address"
    field :locations, list_of(:location) do
      arg :address, type: non_null(:string)

      # resolve fn %{address: address}, _ ->
      #   {:ok, for({_key, value} <- @fake_geocoder, value.address =~ address, into: [], do: value)}
      resolve(&Resolvers.LocationResolver.match/3)
    end
  end
end