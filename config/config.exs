use Mix.Config

config :coderich_tweet, CoderichTweet.Scheduler, jobs: [
  {"* * * *", fn  ->

    CoderichTweet.FileReader.get_strings_to_tweet(

    Path.join("#{:code.priv_dir(:coderich_tweet)}", "sample.txt")
    )

    |> CoderichTweet.TweetServer.tweet

  end}
]
