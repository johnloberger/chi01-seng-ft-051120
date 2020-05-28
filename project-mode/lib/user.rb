class User < ActiveRecord::Base
  has_many :findings
  has_many :found_mushrooms, through: :findings, source: :mushroom
  has_many :expertises
  has_many :known_mushrooms, through: :expertises, source: :mushroom

  def to_s
    "#{ self.name } and my fav color is #{ self.fav_color }"
  end
end

# Has many assumes foreign key is derived from this class name and the
# belongings are on a table named after chosen namespace