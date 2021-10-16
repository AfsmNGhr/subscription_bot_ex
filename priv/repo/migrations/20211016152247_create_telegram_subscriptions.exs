defmodule Subscription.Repo.Migrations.CreateTelegramSubscriptions do
  use Ecto.Migration

  def change do
    create table(:telegram_subscriptions) do
      add :chat_id, :integer
      add :status, :integer, default: 0

      timestamps()
    end

    create index(:telegram_subscriptions, [:status], where: "status = 0")
    create index(:telegram_subscriptions, [:chat_id], unique: true)
  end
end
