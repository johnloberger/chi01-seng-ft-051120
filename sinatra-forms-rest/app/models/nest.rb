class Nest < ActiveRecord::Base
  has_many :visits
  has_many :birds, through: :visits

  validates :tree_name, presence: true  
end