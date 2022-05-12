import Config

config :elixir, :time_zone_database, Tzdata.TimeZoneDatabase

config :tesla, adapter: {Tesla.Adapter.Hackney, [recv_timeout: 30_000]}