use Mix.Config

# ## SSL Support
#
# To get SSL working, you will need to set:
#
#     https: [port: 443,
#             keyfile: System.get_env("SOME_APP_SSL_KEY_PATH"),
#             certfile: System.get_env("SOME_APP_SSL_CERT_PATH")]
#
# Where those two env variables point to a file on
# disk for the key and cert.

config :phoenix, Ironchat.Router,
  url: [host: "example.com"],
  http: [port: System.get_env("PORT")],
  secret_key_base: "OOHaVQ+80hvwoZHRKHnP7nC1yCeaJ/lGfESaJb/hZUvlzM8J0n53dF2QlQ7R2sNk004pS069+WH6r7iQuoMXnA=="

config :logger, :console,
  level: :info
