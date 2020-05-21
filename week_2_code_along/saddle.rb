class Saddle

  attr_reader :dragon, :rider

  @@all = []

  def initialize(dragon, rider)
    @dragon = dragon
    @rider = rider

    @@all << self
  end


  def self.magic_butt_cushion
    #Returns all of the saddle instances where the dragon is magical
    Saddle.all.select {|saddle| saddle.dragon.magic }
  end

  def self.green_dragons_with_short_name_riders
    #Returns all of the saddle instances that have a green dragon with a rider that has a name 4 characters or less.
    self.all.select {|saddle| saddle.dragon.color == "green" && saddle.rider.name.length <= 4}
  end

  def self.ridden_dragons
    #Returns a **unique** array of **names** of dragons that are ridden.
    uniq_dragons = self.all.map {|saddle| saddle.dragon.name }.uniq
  end




  def self.all
    @@all
  end

end
