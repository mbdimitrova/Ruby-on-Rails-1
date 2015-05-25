module HomeHelper
  def fetch_tweets
    client = Twitter::REST::Client.new do |config|
      config.consumer_key = TwitterClient.consumer_key
      config.consumer_secret = TwitterClient.consumer_secret
      config.oauth_token = TwitterClient.oauth_token
      config.oauth_token_secret = TwitterClient.oauth_token_secret
    end

    client.user(TwitterClient.username)
    client.home_timeline
  end
end
