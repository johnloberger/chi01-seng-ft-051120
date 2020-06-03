class Bird < ActiveRecord::Base
  has_many :songs
  has_many :visits
  has_many :nests, through: :visits
end