defmodule TelegramBot.TelegramSubscription do
  use Ecto.Schema
  import Ecto.Changeset

  alias TelegramBot.TelegramSubscription

  schema "telegram_subscriptions" do
    field :chat_id, :integer
    field :status, Ecto.Enum, values: [active: 0, inactive: 1], default: :active

    timestamps()
  end

  @required_fields ~w(chat_id)a
  @optional_fields ~w(status)a

  @doc false
  def changeset(%TelegramSubscription{} = subsciption, attrs) do
    subsciption
    |> cast(attrs, @required_fields ++ @optional_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:chat_id)
  end
end
