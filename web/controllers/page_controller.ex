defmodule Couples.PageController do
  use Couples.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
