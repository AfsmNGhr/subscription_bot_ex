defmodule TelegramBot do
  alias TelegramBot.{WelcomeHandler, SubscribeHandler, UnsubscribeHandler, HelpHandler}

  def handle("/start", message), do: WelcomeHandler.handle(message)

  def handle("/subscribe", message), do: SubscribeHandler.handle(message)

  def handle("/unsubscribe", message), do: UnsubscribeHandler.handle(message)

  def handle("/help", message), do: HelpHandler.handle(message)

  def handle(_, _), do: nil
end
