defmodule TelegramBot.SubscribeHandler do
  alias Subscription.Repo
  alias TelegramBot.TelegramSubscription

  def handle(message) do
    activate_subscription(message)

    Nadia.send_message(
      message["chat"]["id"],
      "Вы подписались на рассылку о новых мероприятиях.",
      parse_mode: "markdown"
    )
  end

  defp activate_subscription(message) do
    Repo.insert(
      %TelegramSubscription{chat_id: message["chat"]["id"], status: :active},
      on_conflict: {:replace, [:status]},
      conflict_target: :chat_id
    )
  end
end
