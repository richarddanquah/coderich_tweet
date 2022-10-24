defmodule CoderichTweet.Tweet do
  def send(str) do
    ExTwitter.configure(:process,[
      consumer_key: "",
      consumer_secret: "",
      access_token: "",
      access_token_secret: ""
    ])

    # token = ExTwitter.request_token("http://myapp.com/twitter-callback")

    # {:ok, authenticate_url} = ExTwitter.authenticate_url(token.oauth_token)
    # IO.puts authenticate_url


    ExTwitter.update(str)
  end
end
