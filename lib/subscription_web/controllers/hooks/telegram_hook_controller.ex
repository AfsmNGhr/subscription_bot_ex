defmodule SubscriptionWeb.Hooks.TelegramHookController do
  use SubscriptionWeb, :controller

  alias Subsciption.TelegramBot

  def create(conn, %{"message" => message}) do
    TelegramBot.handle(message["text"], message)

    send_resp(conn, 200, "")
  end

  def create(conn, _), do: send_resp(conn, 200, "")
end
