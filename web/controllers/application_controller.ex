defmodule Discuss.ApplicationController do
  use Discuss.Web, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
