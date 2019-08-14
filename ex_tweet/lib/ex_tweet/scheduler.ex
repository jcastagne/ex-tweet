defmodule ExTweet.Scheduler do
    @moduledoc false

    use Quantum.Scheduler,
    otp_app: :ex_tweet
end