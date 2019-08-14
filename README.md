# ExTweet

Simple training application that sends random tweets taken from a txt file on a specified schedule

## Usage

### Setting up Tweet Pool

Paste strings in the [pool](ex_tweet/priv/tweets.txt) file.
Each line will correspond to a tweet

```
This is some tweet
Here is another tweet
```

### Adjusting the Schedule

You can set the desired schedule in the [config](ex_tweet/config/config.exs) file.
Schedule must be set in a [Cron](https://crontab.guru) way

## Built With
* [Quantum](https://hex.pm/packages/quantum) - Task scheduler
* [Extwitter](https://hex.pm/packages/extwitter) - Twitter client library for elixir
* [Mock](https://hex.pm/packages/mock) - A mocking libary for the Elixir language.
* [Mix Test Watch](https://hex.pm/packages/mix_test_watch) - Automatically run tests when files change

## License
[MIT](LICENSE) @jcastagne
