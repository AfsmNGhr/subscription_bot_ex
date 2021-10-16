defmodule TelegramBot.HelpHandler do
  def handle(message) do
    Nadia.send_message(
      message["chat"]["id"],
      """
      Вы можете подписаться, чтобы не пропустить новые мероприятия.

      /subscribe - подписаться на рассылку

      /unsubscribe - отписаться от рассылки

      /start - запустить бота

      /help - показать список команд
      """,
      parse_mode: "markdown"
    )
  end
end
