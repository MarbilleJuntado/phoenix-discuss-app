defmodule Discuss.CommentsChannel do
  use Discuss.Web, :channel
  alias Discuss.Topic

  def join("comments:" <> topic_id, _params, socket) do
    topic_id = String.to_integer(topic_id)
    topic = Repo.get(Topic, topic_id)

    {:ok, topic, socket}
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