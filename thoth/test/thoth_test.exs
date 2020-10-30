defmodule ThothTest do
  use ExUnit.Case
  doctest Thoth

  test "greets the world" do
    assert Thoth.hello() == :world
  end
end
