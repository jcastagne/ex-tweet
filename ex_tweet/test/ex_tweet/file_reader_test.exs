defmodule FileReaderTest do
    @moduledoc false

    use ExUnit.Case

    import ExTweet.FileReader
    import Mock

    doctest ExTweet.FileReader

    test "Passing a file should return a string" do
        str = get_strings_to_tweet(Path.join("#{:code.priv_dir(:ex_tweet)}", "test/tweets.txt"))

        assert str != nil && str != ""
    end

    test "Passing an empty file should return an empty string" do
        with_mock File, [read!: fn(_) -> "" end] do
            str = get_strings_to_tweet("")

            assert str == ""
        end
    end

end
