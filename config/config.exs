import Config

config :subscription,
  ecto_repos: [Subscription.Repo]

config :subscription, SubscriptionWeb.Endpoint,
  url: [host: "localhost"],
  render_errors: [view: SubscriptionWeb.ErrorView, accepts: ~w(json), layout: false]

config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

config :phoenix, :json_library, Jason

import_config "#{config_env()}.exs"
