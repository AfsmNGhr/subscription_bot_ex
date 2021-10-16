defmodule TelegramBot.UnsubscribeHandler do
  alias Subscription.Repo
  alias TelegramBot.TelegramSubscription

  def handle(message) do
    deactivate_subscription(message)

    Nadia.send_message(
      message["chat"]["id"],
      "Вы успешно отписались. Чтобы заново запустить рассылку мероприятий, отправьте команду /subscribe.",
      parse_mode: "markdown"
    )
  end

  defp deactivate_subscription(message) do
    Repo.insert(
      %TelegramSubscription{chat_id: message["chat"]["id"], status: :inactive},
      on_conflict: {:replace, [:status]},
      conflict_target: :chat_id
    )
  end
end
