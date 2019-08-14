defmodule StringHelperTest do
    @moduledoc false

    use ExUnit.Case

    import ExTweet.StringHelper

    doctest ExTweet.StringHelper

    @tag watching: true
    test "Will not return a string longer than 140 character" do
        str = filter_string("Some string that is too long to fit in a tweet (possibly spans more than 140 characters). This string should never get returned by our file reader")

        assert str == ""
    end

    @tag watching: true
    test "Empty string should return an empty string" do
        str = filter_string("")

        assert str == ""
    end

    @tag watching: true
    test "String should be trimmed" do
        str = filter_string("ABC ")

        assert str == "ABC"
    end
end
