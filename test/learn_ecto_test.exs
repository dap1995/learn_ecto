defmodule LearnEctoTest do
  use ExUnit.Case
  alias LearnEcto.Query
  doctest LearnEcto

  #This is a simple test with a empty database
  test "list Confirmed Users" do
    assert Query.listConfirmedUsers == []
  end

  #This is a simple test with a empty database
  test "count Confirmed Users" do
    assert Query.countConfirmedUsers == [0]
  end

  test "count Confirmed Users Group" do
    assert Query.countConfirmedUsersGroup == []
  end

  test "list Users By Date" do
    assert Query.listUsersByDate == []
  end

  test "list Users By Decreasing Date" do
    assert Query.listUsersByDecreasingDate == []
  end
end
