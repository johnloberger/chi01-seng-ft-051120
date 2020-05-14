class Like
  attr_reader :tweet, :user

  @@all = []

  def initialize(tweet, user)
    @tweet = tweet
    @user = user
    self.class.all << self
  end

  def self.all
    @@all
  end
end