defmodule Dummy2.Repo do
  use Ecto.Repo,
    otp_app: :dummy2,
    adapter: Ecto.Adapters.Postgres
end
