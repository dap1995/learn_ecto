defmodule LearnEcto.Transactions do
  alias LearnEcto.{Repo, User}
  import Ecto.Query, only: [from: 2]

  def insert_user(changeset) do
    Repo.start_link()
    %User{}
    |> User.changeset(changeset)
    |> Repo.insert!()
  end

  def delete_user(username) do
    Repo.start_link()
    (from u in User,
    where: u.username == ^username) |> Repo.delete_all
  end
end
