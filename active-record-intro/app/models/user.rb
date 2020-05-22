class User < ActiveRecord::Base
  has_many :tweets
  has_many :likes

  has_many :liked_tweets, through: :likes, source: :tweet
  
  # def liked_tweets
  #   self.likes.map do |like|
  #     Tweet.find_by(id: like.tweet_id)
  #   end
  # end

  # def tweets
  #   Tweet.where(user_id: self.id)
  # end

end