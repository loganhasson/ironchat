defmodule Ironchat.ChatChannel do
  use Phoenix.Channel

  def join(socket, "handraise", message) do
    reply socket, "join", %{content: "Welcome to Handraise 3.0"}
    {:ok, socket}
  end

  def join(socket, _no, _message) do
    {:error, socket, :unauthorized}
  end

  def event(socket, "chat:message", message) do
    broadcast socket, "reply", %{content: message}
    socket
  end
end

