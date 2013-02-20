class TwitterWrapper

  attr_accessor :client

  def initialize(user)
    @client = Twitter::Client.new(  :consumer_key       => APP_CONFIG["consumer_key"],
                                    :consumer_secret    => APP_CONFIG["consumer_secret"],
                                    :oauth_token        => user.token, 
                                    :oauth_token_secret => user.secret)
  end

  def status(twitter_id)
    @client.status(twitter_id)
  end

end