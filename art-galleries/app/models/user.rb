puts "*" * 42
puts "LOADING user.rb..."
class User
  attr_reader :name

  def initialize(name)
    @name = name
  end

  def photos
    Photo.all.select do |photo|
      photo.user == self
    end
  end
end