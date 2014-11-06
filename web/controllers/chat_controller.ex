defmodule Ironchat.ChatController do
  use Phoenix.Controller

  plug :action

  def index(conn, params) do
    render conn, :index
  end
end

