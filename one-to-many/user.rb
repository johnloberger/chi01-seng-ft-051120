class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def tweets
    # Access all the tweets I posted:
    # First, let's get ALL the tweets
    # Then, filter for just our own tweets
    my_tweets = Tweet.all.select do |tweet|
      # based on the tweet's user compared to ME
      tweet.username == self.username
    end
    my_tweets
  end

  def longest_tweet
    tweets.max_by { |tweet| tweet.message.length }
  end
end