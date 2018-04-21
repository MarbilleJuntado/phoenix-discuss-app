defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel

  def join(name, _params, socket) do
    IO.puts("++++")
    IO.inspect(name)
    {:ok, %{hey: "There"}, socket}
  end

  def handle_in() do
    
  end
end