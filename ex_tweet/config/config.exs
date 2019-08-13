import Config

config :ex_tweet, ExTweet.Scheduler,
    jobs: [
        # Every Minute
        {"* * * * *", fn -> IO.puts ExTweet.FileReader.get_strings_to_tweet("res/sample.txt") end}
    ]

config :logger,
    level: :warn

# If dealing with multi-env config
#import_config "#{Mix.env()}.exs"
