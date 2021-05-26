# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :jsonapi,
  ecto_repos: [Jsonapi.Repo],
  generators: [binary_id: true]

# Configures the endpoint
config :jsonapi, JsonapiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "/rHZSFsTQjgi0GHuZ3MqAnHRoTQc55bGie6btMT8ThgAh55aO9u2vZJ0A+MFfVxZ",
  render_errors: [view: JsonapiWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: Jsonapi.PubSub,
  live_view: [signing_salt: "9Vow6jwZ"],
  debug_errors: false

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
