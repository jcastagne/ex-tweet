defmodule ExTweet.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      # Starts a worker by calling: ExTweet.Worker.start_link(arg)
      # {ExTweet.Worker, arg}
      worker(ExTweet.TweetServer, []),
      worker(ExTweet.Scheduler, [])
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ExTweet.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
