puts "*" * 42
puts "LOADING photo.rb..."
class Photo

  @@all = []
  attr_accessor :user

  def initialize(user=nil)
    @user = user
    @@all << self
  end

  def self.all
    @@all
  end
end