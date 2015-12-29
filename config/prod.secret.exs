use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
config :quants, Quants.Endpoint,
  secret_key_base: "si0arljG3z7MhYwij+Md9HrWP/1NmbLKuSkrC5oY5VyruOLz7WRL1b2Wjow/TJh6"

# Configure your database
config :quants, Quants.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "quants_prod",
  pool_size: 20
