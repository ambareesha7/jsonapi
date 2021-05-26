defmodule Jsonapi.Repo do
  use Ecto.Repo,
    otp_app: :jsonapi,
    adapter: Ecto.Adapters.Postgres
end
