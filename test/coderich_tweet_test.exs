defmodule CoderichTweetTest do
  use ExUnit.Case
  doctest CoderichTweet

  test "greets the world" do
    assert CoderichTweet.hello() == :world
  end
end
