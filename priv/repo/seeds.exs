# Script for populating the database. You can run it as:
#
#     mix run priv/repo/seeds.exs
#
# Inside the script, you can read and write to any of your
# repositories directly:
#
#     Jsonapi.Repo.insert!(%Jsonapi.SomeSchema{})
#
# We recommend using the bang functions (`insert!`, `update!`
# and so on) as they will fail if something goes wrong.
IO.puts("adding couple of users...")
Jsonapi.Account.create_user(%{email: "user1@email", password: "1234"})
Jsonapi.Account.create_user(%{email: "user2@email", password: "1234"})
Jsonapi.Account.create_user(%{email: "user3@email", password: "1234"})
