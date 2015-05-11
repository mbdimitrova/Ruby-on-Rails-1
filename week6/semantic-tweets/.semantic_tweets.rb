require "twitter"

class SemanticTweets
  def initialize
    @client = Twitter::REST::Client.new do |config|
      config.consumer_key = "q3akL2UJyWoTRf5ZQOqDhmmNQ"
      config.consumer_secret = "eSeAvDfUeWaleCGz2YNjpYpewhcsAEkXU8JY9wkE1NPE0rHYsS"
      config.access_token = "3040447875-s7trhWWAmH3B62M0SQgy6mljnVcPEfHAzQzCXW3"
      config.access_token_secret = "tKIw6CmlXEg0GEkR0dT8Zu0en6xRWPRGbiqlISnzKCucE"
    end
  end

  def get_home_timeline(username)
    @client.user(username)
    @client.home_timeline.each do |tweet|
      puts tweet.text
    end
  end
end

semantic_tweets = SemanticTweets.new
semantic_tweets.get_home_timeline("mbdimitrova")
