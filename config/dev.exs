import Config

config :subscription, Subscription.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRES_USER", "subscription"),
  password: System.get_env("POSTGRES_PASSWORD", "subscription"),
  database: System.get_env("POSTGRES_DB", "subscription_development"),
  hostname: System.get_env("POSTGRES_HOST", "localhost"),
  port: String.to_integer(System.get_env("POSTGRES_PORT", "5432")),
  pool_size: String.to_integer(System.get_env("POSTGRES_POOL", "10")),
  show_sensitive_data_on_connection_error: true

config :subscription, SubscriptionWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4000],
  check_origin: false,
  code_reloader: true,
  debug_errors: true,
  watchers: []

config :logger, :console, format: "[$level] $message\n"

config :phoenix,
  stacktrace_depth: 20,
  plug_init_mode: :runtime
