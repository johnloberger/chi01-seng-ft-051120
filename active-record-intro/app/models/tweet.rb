class Tweet < ActiveRecord::Base
  belongs_to :user
  has_many :likes
  has_many :likers, through: :likes, source: :user
  
  # def user
  #   # find only takes id
  #   # User.find(3)
    
  #   # User.find(self.user_id)
    
  #   # find_by takes any k/v
  #   User.find_by(id: self.user_id)
  # end

end