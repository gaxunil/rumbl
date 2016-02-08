defmodule Rumbl.UserController do
  use Rumbl.Web, :controller

  def index(conn, _params) do
    users = Repo.all(Rumbl.User)
    IO.inspect(users)
    render conn, "index.html", users: users
  end

  def show(conn, _params) do
    render conn, "show.html"
  end
end
