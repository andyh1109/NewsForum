defmodule NewsbeeWeb.TopicView do
  use NewsbeeWeb, :view
<<<<<<< HEAD
end
=======
  alias NewsbeeWeb.TopicView
  alias NewsbeeWeb.UserView

  def render("index.json", %{topics: topics}) do
    %{data: render_many(topics, TopicView, "topic.json")}
  end

  def render("show.json", %{topic: topic}) do
    %{data: render_one(topic, TopicView, "topic.json")}
  end

  def render("topic.json", %{topic: topic}) do
    IO.inspect topic
    %{id: topic.id,
      title: topic.title,
      user: render_one(topic.user, UserView, "user.json")
  }
  end
end

>>>>>>> nilay
