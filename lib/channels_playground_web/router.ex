defmodule ChannelsPlaygroundWeb.Router do
  use ChannelsPlaygroundWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ChannelsPlaygroundWeb do
    pipe_through :browser

    get "/", PageController, :index
    get "/mobtype", PageController, :mobtype
    post "/mobtype/update", PageController, :mobtype_update
  end

  # Other scopes may use custom stacks.
  # scope "/api", ChannelsPlaygroundWeb do
  #   pipe_through :api
  # end
end
