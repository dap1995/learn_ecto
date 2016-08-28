defmodule LearnEcto.Repo.Migrations.CreateUser do
  use Ecto.Migration
  def change do
    create table(:users) do
      add :username, :string, unique: true
      add :encrypted_password, :string, null: false
      add :email, :string
      add :confirmed, :boolean, default: false

      timestamps
    end

    create unique_index(:users, [:username], name: :unique_usernames)
  end

  #Comentado pois não sei nem pra que serve
  #def change do
  #end
end
