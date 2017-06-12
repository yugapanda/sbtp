# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :sbtp,
  ecto_repos: [Sbtp.Repo]

# Configures the endpoint
config :sbtp, Sbtp.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "1BP5gaY/JP5jubjPyfhx5nfurSWJC8a818dThfn53lEL9tUJm2K2QWO84kA+eDUo",
  render_errors: [view: Sbtp.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Sbtp.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
