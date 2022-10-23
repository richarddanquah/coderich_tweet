defmodule CoderichTweet.Tweet do
  def send(str) do
    ExTwitter.configure(:process,
      consumer_key: System.get_env("CODERICH_TWEET_TWITTER_CONSUMER_KEY"),
      consumer_secret: System.get_env("CODERICH_TWEET_TWITTER_CONSUMER_SECRET"),
      access_token: System.get_env("CODERICH_TWEET_TWITTER_ACCESS_TOKEN"),
      access_token_secret: System.get_env("CODERICH_TWEET_TWITTER_ACCESS_SECRET")
    )

    # token = ExTwitter.request_token("http://myapp.com/twitter-callback")

    # {:ok, authenticate_url} = ExTwitter.authenticate_url(token.oauth_token)
    # IO.puts authenticate_url


    ExTwitter.update(str)
  end
end
