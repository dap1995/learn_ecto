defmodule LearnEcto.Query do
import Ecto.Query, only: [from: 2]
alias LearnEcto.{Repo, User}

#List all confirmed users
def listConfirmedUsers do
Repo.start_link()
query = from u in User,
  where: u.confirmed == true,
  select: u.username
Repo.all(query)
end

#Count all confirmed users
def countConfirmedUsers do
  Repo.start_link()
  query = from u in User,
  where: u.confirmed == true,
  select: count(u.id)
  Repo.all(query)
end

#Count the confirmed and not confirmed group
def countConfirmedUsersGroup do
  Repo.start_link()
  query = from u in User,
  group_by: u.confirmed,
  select: [u.confirmed, count(u.id)]
  Repo.all(query)
end

#List all users by date
def listUsersByDate do
  Repo.start_link()
  query = from u in User,
  order_by: u.inserted_at,
  select: [u.username, u.inserted_at]
  Repo.all(query)
end

#List all user by decreasing date
def listUsersByDecreasingDate do
  Repo.start_link()
  query = from u in User,
  order_by: [desc: u.inserted_at],
  select: [u.username, u.inserted_at]
  Repo.all(query)
end

end
