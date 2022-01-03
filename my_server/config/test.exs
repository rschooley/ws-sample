import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_server, MyServerWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "wmIbqdP/Lg6HZutUYqnbynv4Kp3+9ndE3OrJ49abKzR5VKp5fLl0kGT7DkQnCObj",
  server: false

# In test we don't send emails.
config :my_server, MyServer.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
