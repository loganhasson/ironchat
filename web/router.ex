defmodule Ironchat.Router do
  use Phoenix.Router
  use Phoenix.Router.Socket, mount: "/ws"

  channel "channel", Ironchat.ChatChannel

  scope "/" do
    # Use the default browser stack.
    pipe_through :browser

    get "/", Ironchat.PageController, :index, as: :pages
    get "/chat", Ironchat.ChatController, :index, as: :chats
  end

  # Other scopes may use custom stacks.
  # scope "/api" do
  #   pipe_through :api
  # end
end
