defmodule ExTweet.FileReader do
    @moduledoc """
    Reads strings from files
    """

    import ExTweet.StringHelper

    @doc """
    This function will take the path to a file and find a random string that can be twitted out.

    ## Examples

        iex> ExTweet.FileReader.get_strings_to_tweet("priv/test/tweets.txt")
        "ABC"
    """
    def get_strings_to_tweet(path) do
        filter_string(File.read!(path))
    end

end