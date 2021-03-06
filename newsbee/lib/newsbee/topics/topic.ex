defmodule Newsbee.Topics.Topic do
    use Ecto.Schema
    import Ecto.Changeset
  
    schema "topics" do
      field :title, :string
      belongs_to :user, Newsbee.Users.User
      has_many :comments, Newsbee.Comments.Comment, on_delete: :delete_all
  
      timestamps()
    end
  
    @doc false
    def changeset(topic, attrs) do
      topic
      |> cast(attrs, [:title, :user_id])
      |> validate_required([:title, :user_id])
    end
  end
