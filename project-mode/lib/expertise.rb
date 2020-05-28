class Expertise < ActiveRecord::Base
  belongs_to :expert, class_name: :User, foreign_key: :user_id
  belongs_to :mushroom
end

# Belongs to:
# assumes table name and foreign key name based on namespace given