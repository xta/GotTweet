class Tweet < ActiveRecord::Base

  validates :twitter_id, :uniqueness => true

  def self.find_or_create_twitter_id(user, t_id)
    Tweet.find_by_twitter_id(t_id) || create_from_twitter_id(user, t_id)
  end

  def self.create_from_twitter_id(user, t_id)
    client   = TwitterWrapper.new(user)
    response = client.status(t_id)

    new_tweet = self.new

    new_tweet.created_stamp    = response.attrs[:created_stamp]
    new_tweet.twitter_id       = response.attrs[:id]
    new_tweet.text             = response.attrs[:text]
    new_tweet.user_id          = response.attrs[:user][:id]
    new_tweet.user_name        = response.attrs[:user][:name]
    new_tweet.user_screen_name = response.attrs[:user][:screen_name]
    new_tweet.user_location    = response.attrs[:user][:location]

    new_tweet.save
    return new_tweet
  end

end
