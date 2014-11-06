# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the router
config :phoenix, Ironchat.Router,
  url: [host: "localhost"],
  http: [port: System.get_env("PORT")],
  https: false,
  secret_key_base: "OOHaVQ+80hvwoZHRKHnP7nC1yCeaJ/lGfESaJb/hZUvlzM8J0n53dF2QlQ7R2sNk004pS069+WH6r7iQuoMXnA==",
  catch_errors: true,
  debug_errors: false,
  error_controller: Ironchat.PageController

# Session configuration
config :phoenix, Ironchat.Router,
  session: [store: :cookie,
            key: "_ironchat_key"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
