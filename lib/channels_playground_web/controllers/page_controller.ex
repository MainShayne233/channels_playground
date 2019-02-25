defmodule ChannelsPlaygroundWeb.PageController do
  use ChannelsPlaygroundWeb, :controller

  alias ChannelsPlayground.Store

  def index(conn, _params) do
    redirect(conn, to: "/mobtype")
  end

  def mobtype(conn, _params) do
    render(conn, "mobtype.html", text: Store.get(:mobtype, :text))
  end

  def mobtype_update(conn, %{"text" => text}) do
    Store.put(:mobtype, :text, text)
    json(conn, %{success: true})
  end
end
