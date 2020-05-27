class Mushroom < ActiveRecord::Base
  has_many :findings
  has_many :users, through: :findings

  def to_s
    "#{ species.capitalize }: found in #{ habitat }."
  end
end