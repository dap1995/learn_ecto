defmodule LearnEcto.Query do
  import Ecto.Query, only: [from: 2]
  alias LearnEcto.{Repo, User}

  #List all confirmed users
  def list_confirmed_users do
  Repo.start_link()
  query = from u in User,
    where: u.confirmed == true,
    select: u.username
  Repo.all(query)
  end

  #Count all confirmed users
  def count_confirmed_users do
    Repo.start_link()
    query = from u in User,
    where: u.confirmed == true,
    select: count(u.id)
    Repo.all(query)
  end

  #Count the confirmed and not confirmed group
  def count_confirmed_users_group do
    Repo.start_link()
    query = from u in User,
    group_by: u.confirmed,
    select: [u.confirmed, count(u.id)]
    Repo.all(query)
  end

  #List all users by date
  def list_users_by_date do
    Repo.start_link()
    query = from u in User,
    order_by: u.inserted_at,
    select: [u.username, u.inserted_at]
    Repo.all(query)
  end

  #List all user by decreasing date
  def list_users_by_decreasing_date do
    Repo.start_link()
    query = from u in User,
    order_by: [desc: u.inserted_at],
    select: [u.username, u.inserted_at]
    Repo.all(query)
  end

  def get_user(username) do
    Repo.start_link()
    query = from u in User,
    where: u.username == ^username
    Repo.all(query)
  end

end
