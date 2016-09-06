defmodule LearnEcto.Query do
import Ecto.Query, only: [from: 2]
LearnEcto.Repo.start_link()
query = from u in "users",
  where: u.email == "dap1995@gmail.com",
  select: u.username

LearnEcto.Repo.all(query)
end
