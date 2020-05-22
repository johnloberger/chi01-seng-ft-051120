class Like < ActiveRecord::Base
  belongs_to :user
  belongs_to :tweet

  # def tweet
  #   Tweet.find_by(id: self.tweet_id)
  # end
end