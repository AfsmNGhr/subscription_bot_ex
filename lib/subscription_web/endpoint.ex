defmodule SubscriptionWeb.Endpoint do
  use Phoenix.Endpoint, otp_app: :subscription

  @session_options [
    store: :cookie,
    key: "_subscription_key",
    signing_salt: "G1+JrXAh"
  ]

  if code_reloading? do
    plug Phoenix.CodeReloader
    plug Phoenix.Ecto.CheckRepoStatus, otp_app: :subscription
  end

  plug Plug.RequestId

  plug Plug.Parsers,
    parsers: [:urlencoded, :multipart, :json],
    pass: ["*/*"],
    json_decoder: Phoenix.json_library()

  plug Plug.MethodOverride
  plug Plug.Head
  plug Plug.Session, @session_options
  plug SubscriptionWeb.Router
end
