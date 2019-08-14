import Config

config :ex_tweet, ExTweet.Scheduler,
    jobs: [
        # Every Day
        {"@daily",
        fn -> ExTweet.FileReader.get_strings_to_tweet(Path.join("#{:code.priv_dir(:ex_tweet)}", "tweets.txt"))
              |> ExTweet.TweetServer.tweet end
        }
    ]

config :logger,
    level: :warn

# If dealing with multi-env config
#import_config "#{Mix.env()}.exs"
