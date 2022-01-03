defmodule MyServerWeb.PageController do
  use MyServerWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
