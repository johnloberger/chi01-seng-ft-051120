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

  def likes
    # Find all the likes
    # And keep the ones where I was the liked tweet
    Like.all.select do |like|
      like.tweet == self
    end
  end

  def likes_count
    self.likes.count
  end

  def likers
    # First, get all my likes
    my_likes = Like.all.select do |like|
      like.tweet == self
    end
    # then, collect each like's user into an output array
    # my_likes.map(&:user)
    my_likes.map { |like| like.user }
  end
end


