defmodule WifiMapGda.PageController do
  use WifiMapGda.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
