import Config

config :subscription, Subscription.Repo,
  pool: Ecto.Adapters.SQL.Sandbox,
  username: System.get_env("POSTGRES_USER", "subscription"),
  password: System.get_env("POSTGRES_PASSWORD", "subscription"),
  database: System.get_env("POSTGRES_DB", "subscription_test"),
  hostname: System.get_env("POSTGRES_HOST", "localhost"),
  port: String.to_integer(System.get_env("POSTGRES_PORT", "5432")),
  pool_size: String.to_integer(System.get_env("POSTGRES_POOL", "10")),

config :subscription, SubscriptionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  server: false

config :phoenix,
  stacktrace_depth: 20,
  plug_init_mode: :runtime
