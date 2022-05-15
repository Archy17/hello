defmodule Hello3.Repo do
  use Ecto.Repo,
    otp_app: :hello3,
    adapter: Ecto.Adapters.Postgres
end
