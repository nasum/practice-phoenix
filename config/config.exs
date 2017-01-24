# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :practice_phoenix,
  ecto_repos: [PracticePhoenix.Repo]

# Configures the endpoint
config :practice_phoenix, PracticePhoenix.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "J+T2EK5tEzkpQVIJJ2NIfyIBilN36Xuhar2PiiotWHRHZpiwjCLesgMz5utxr4Jz",
  render_errors: [view: PracticePhoenix.ErrorView, accepts: ~w(html json)],
  pubsub: [name: PracticePhoenix.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
