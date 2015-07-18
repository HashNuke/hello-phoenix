defmodule HelloPhoenix.PageController do
  use HelloPhoenix.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end

  def foo(conn, _params) do
    text conn, "hello foobar-4 ~!"
  end

end
