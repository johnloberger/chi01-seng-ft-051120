class Visit < ActiveRecord::Base
  belongs_to :bird
  belongs_to :nest
end