defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel

  def join(name, _params, socket) do
    IO.puts(name)
    {:ok, %{hey: "There"}, socket}
  end

  # follow-up communication
  def handle_in(name, message, socket) do
    IO.puts("++++")
    IO.puts(name)
    IO.puts("++++")
    IO.inspect(message)
    IO.puts("++++")
    {:reply, :ok, socket}
  end
end