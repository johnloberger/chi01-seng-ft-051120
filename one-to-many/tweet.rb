class Tweet
  attr_reader :message, :user
  
  @@all = []

  def initialize(message, user)
    @message = message
    @user = user
    @@all << self
  end

  def username
    # Whichever user wrote me, I need to display their username
    self.user.username
  end

  def self.all
    @@all
  end
end


