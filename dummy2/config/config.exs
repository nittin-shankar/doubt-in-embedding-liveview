# This file is responsible for configuring your application
# and its dependencies with the aid of the Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
import Config

config :dummy2,
  ecto_repos: [Dummy2.Repo]

# Configures the endpoint
config :dummy2, Dummy2Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "e2Py7G6GWzq19irT8FbULGx/6jeD9Tfa3icTD2UxnhyaZKGozvMRrO6Ad0i6Qj8f",
  render_errors: [view: Dummy2Web.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Dummy2.PubSub,
  live_view: [signing_salt: "CyLU9gQV"]

# Configures the mailer
#
# By default it uses the "Local" adapter which stores the emails
# locally. You can see the emails in your browser, at "/dev/mailbox".
#
# For production it's recommended to configure a different adapter
# at the `config/runtime.exs`.
config :dummy2, Dummy2.Mailer, adapter: Swoosh.Adapters.Local

# Swoosh API client is needed for adapters other than SMTP.
config :swoosh, :api_client, false

# Configure esbuild (the version is required)
config :esbuild,
  version: "0.12.18",
  default: [
    args: ~w(js/app.js --bundle --target=es2016 --outdir=../priv/static/assets),
    cd: Path.expand("../assets", __DIR__),
    env: %{"NODE_PATH" => Path.expand("../deps", __DIR__)}
  ]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{config_env()}.exs"
