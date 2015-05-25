class TwitterClient
  class << self
    attr_accessor :username
    attr_accessor :consumer_key
    attr_accessor :consumer_secret
    attr_accessor :oauth_token
    attr_accessor :oauth_token_secret
  end

  def authenticate
    send_authentication_request
  end

  private

  def username
    self.class.username
  end

  def consumer_key
    self.class.consumer_key
  end

  def oauth_token
    self.class.oauth_token
  end

  def consumer_key
    self.class.oauth_token_secret
  end

  def send_authentication_request
    #TODO
  end
end
