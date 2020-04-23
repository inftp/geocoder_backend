defmodule GeocoderBackendWeb.Resolvers.LocationResolver do
  # alias GeocoderBackend.Locations

  # TODO: Make a resolver that hits google maps and/or mapbox instead of using dummy data

  @fake_geocoder %{
    "Dominos" => %{
      address: "1009 Burwood Hwy, Ferntree Gully VIC Australia 3156",
      lat: -37.888580,
      lng: 145.289060
    },
    "Through the Looking Glass" => %{
      address: "1669 Burwood Hwy, Belgrave VIC Australia 3160",
      lat: -37.909020,
      lng: 145.354280
    }
  }

  def match(_parent, args, _resolutions) do
    {:ok, for({_key, value} <- @fake_geocoder, String.downcase(value.address) =~ String.downcase(args.address), into: [], do: value)}
  end

end
