import Config

config :subscription, Subscription.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("POSTGRES_USER"),
  password: System.get_env("POSTGRES_PASSWORD"),
  database: System.get_env("POSTGRES_DB"),
  hostname: System.get_env("POSTGRES_HOST"),
  port: String.to_integer(System.get_env("POSTGRES_PORT", "5432")),
  pool_size: String.to_integer(System.get_env("POSTGRES_POOL", "10"))

secret_key_base =
  System.get_env("SECRET_KEY_BASE") ||
  raise """
  environment variable SECRET_KEY_BASE is missing.
  You can generate one by calling: mix phx.gen.secret
  """

config :subscription, SubscriptionWeb.Endpoint,
  http: [
    ip: {0, 0, 0, 0, 0, 0, 0, 0},
    port: String.to_integer(System.get_env("PORT") || "4000")
  ],
  secret_key_base: secret_key_base
