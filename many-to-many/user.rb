class User
  attr_reader :username

  def initialize(username)
    @username = username
  end

  def post_tweet(message)
    Tweet.new(message, self)
  end

  def like_tweet(tweet)
    Like.new(tweet, self)
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

  def likes
    # Look through all the likes
    # Since each one holds a user it belongs to,
    # We can compare ourselves with that user
    # And keep the ones that match
    Like.all.find_all do |like|
      like.user == self
    end
  end

  def liked_tweets
    # For each of the likes that I have
    # I want to pull out the tweet that was liked
    # And collect all those tweets into one output
    my_likes = Like.all.select { |l| l.user == self }
    my_likes.collect do |like|
      like.tweet
    end
  end

  def longest_tweet
    tweets.max_by { |tweet| tweet.message.length }
  end
end