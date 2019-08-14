defmodule ExTweet.SendTweet do
    @moduledoc """
    Authenticates to Twitter app and send tweets.
    """

    def send(str) do
        ExTwitter.configure(
            consumer_key: System.get_env("TWITTER_CONSUMER_KEY"),
            consumer_secret: System.get_env("TWITTER_CONSUMER_SECRET"),
            access_token: System.get_env("TWITTER_ACCESS_TOKEN"),
            access_token_secret: System.get_env("TWITTER_ACCESS_SECRET")
        )
        ExTwitter.update(str)
    end

    def send_from_file(file) do
        ExTweet.FileReader.get_strings_to_tweet(file)
        |> send
    end
end
