defmodule Ironchat.PageController do
  use Phoenix.Controller

  plug :action

  def index(conn, _params) do
    render conn, "index"
  end

  def show(conn, %{"id" => id}) do
    render conn, "show", id: id
  end

  def not_found(conn, _params) do
    render conn, "not_found"
  end

  def error(conn, _params) do
    render conn, "error"
  end
end
