defmodule GeocoderBackendWeb.Router do
  use GeocoderBackendWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL, schema: GeocoderBackendWeb.Schema

    forward "/", Absinthe.Plug, schema: GeocoderBackendWeb.Schema
  end
end