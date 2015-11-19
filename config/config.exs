# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the endpoint
config :wifi_map_gda, WifiMapGda.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "frlaOphWKil0VmCnKGXd1g8mgo4VhfqMNbOtfGdLVoBnFdo9cu3E5BleY96yCqTo",
  render_errors: [accepts: ~w(html json)],
  pubsub: [name: WifiMapGda.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

# Configure phoenix generators
config :phoenix, :generators,
  migration: true,
  binary_id: false

config :codepagex, :encodings, [
    :ascii,           # by alias name
    ~r[iso8859]i,     # by a regex matching the full name
    ~r[cp]i,          # by a regex matching the full name
    "ETSI/GSM0338",   # by the full name as a string
    :"MISC/CP1250"     # by a full name as an atom
  ]
