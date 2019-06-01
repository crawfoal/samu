# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :samu,
  ecto_repos: [Samu.Repo]

# Configures the endpoint
config :samu, SamuWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7fWooHJM7gsoG6XQlzuCWWM1HYYQhx1aagvRV1elkYPMkexGxYECNsyxM94J4+LH",
  render_errors: [view: SamuWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Samu.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
