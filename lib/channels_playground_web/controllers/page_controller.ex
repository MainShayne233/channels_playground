defmodule ChannelsPlaygroundWeb.PageController do
  use ChannelsPlaygroundWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
