defmodule WifiMapGda.WifiMapController do
  require Logger
  use WifiMapGda.Web, :controller

  def index(conn, _params) do
  
    res = HTTPotion.get "http://www.gdanskwifi.pl/wp-content/uploads/2015/07/UM_Gdansk.csv"
    csv = Codepagex.from_string!(res.body, :ascii, Codepagex.use_utf_replacement)

    render conn, "index.html", items: CSVLixir.parse(String.replace(csv, ";", ","))
  end
end
