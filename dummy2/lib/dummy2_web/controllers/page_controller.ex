defmodule Dummy2Web.PageController do
  use Dummy2Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
