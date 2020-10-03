# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

# Configures the endpoint
config :app_3, App3Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "HbmBPaKjP6mD+GDG/PoY6W15XSmpuJOCSQOUJABLoiSdwpnafYqY5OODFc1I7+hg",
  render_errors: [view: App3Web.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: App3.PubSub,
  live_view: [signing_salt: "sN4iDm/Q"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
