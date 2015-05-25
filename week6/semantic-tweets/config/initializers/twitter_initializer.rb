env_file = File.join(Rails.root, 'config', 'local_env.yml')
config = YAML.load(File.open(env_file))

TwitterClient.username = config['TWITTER_USERNAME']
TwitterClient.consumer_key = config['TWITTER_CONSUMER_KEY']
TwitterClient.consumer_secret = config['TWITTER_CONSUMER_SECRET']
TwitterClient.oauth_token = config['TWITTER_TOKEN']
TwitterClient.oauth_token_secret = config['TWITTER_TOKEN_SECRET']
