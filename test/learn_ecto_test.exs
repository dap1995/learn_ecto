defmodule LearnEctoTest do
  use ExUnit.Case
  alias LearnEcto.{Query, User, Repo, Transactions}
  doctest LearnEcto
  @attrOfUser %{username: "daniel", email: "dap1995@gmail.com", password: "aaaabbbb", password_confirmation: "aaaabbbb"}

  #This is a simple test with a empty database
  test "list Confirmed Users" do
    assert Query.list_confirmed_users == []
  end

  #This is a simple test with a empty database
  test "count Confirmed Users" do
    assert Query.count_confirmed_users == [0]
  end

  test "count Confirmed Users Group" do
    assert Query.count_confirmed_users_group == []
  end

  test "list Users By Date" do
    assert Query.list_users_by_date == []
  end

  test "list Users By Decreasing Date" do
    assert Query.list_users_by_decreasing_date == []
  end

  test "Get user by username: daniel" do
    assert Query.get_user("daniel") == []
  end

  #Insert a user in database
  #test "Insert a user" do
  #  Repo.start_link()
  #  usuario = Transactions.insert_user(@attrOfUser)
  #end

  #Insert a user in database
  #test "Delete a user by username" do
  #  Transactions.delete_user("daniel")
  #end
end
