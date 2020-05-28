class Mushroom < ActiveRecord::Base
  has_many :findings
  has_many :finders, through: :findings, source: :user
  has_many :expertises
  has_many :experts, through: :expertises

  def to_s
    "#{ species.capitalize }: found in #{ habitat }."
  end

  def list_info
    "#{self.id}: #{self.species}"
  end
end