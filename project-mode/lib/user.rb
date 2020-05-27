class User < ActiveRecord::Base
  has_many :findings
  has_many :mushrooms, through: :findings

  def to_s
    "#{ self.name } and my fav color is #{ self.fav_color }"
  end
end