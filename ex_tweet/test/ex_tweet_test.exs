defmodule ExTweetTest do
  use ExUnit.Case
  doctest ExTweet

  test "greets the world" do
    assert ExTweet.hello() == :world
  end
end
