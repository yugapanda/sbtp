defmodule Sbtp.PageController do
  use Sbtp.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
