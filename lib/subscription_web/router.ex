defmodule SubscriptionWeb.Router do
  use SubscriptionWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", SubscriptionWeb do
    pipe_through :api

    scope "/hooks", Hooks do
      post "/telegram", TelegramHookController, :create
    end
  end
end
